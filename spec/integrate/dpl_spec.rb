require 'yaml'
require 'dpl'

def stringify(hash)
  Travis::Yml::Helper::Obj.stringify(hash)
end

describe Travis::Yml, dpl: true, alert: false do
  subject { described_class.apply(parse(yaml), opts) }

  skip = %i(heroku pages help)
  providers = Dpl::Provider.registry.reject { |key, _| skip.include?(key) }.map(&:last)

  providers.each do |provider|
    name = provider.registry_key.to_s.split(':').first
    config = Dpl::Examples.new(provider).full_config
    config = config.merge(provider: name)

    filter = ->(msg) { msg[2] == :deprecated_key && msg[3][:key] == 'skip_cleanup' }

    describe provider.registry_key.to_s do
      yaml YAML.dump(stringify(deploy: [config])).gsub('!ruby/regexp ', '')
      it { should_not have_msg(&filter) }
    end
  end

  describe 'list of providers' do
    let(:ignore) { %i(help api git catalyze chef-supermarket) }

    let(:dpl) do
      keys = Dpl::Provider.registry.keys - ignore
      keys.map { |key| key.to_s.split(':').first.to_sym }.uniq
    end

    let(:yml) { Travis::Yml::Schema::Def::Deploy.provider_names }

    it { expect(dpl.sort).to eq yml.sort }
  end
end

