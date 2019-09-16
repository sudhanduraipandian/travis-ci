describe Travis::Yml::Doc::Validate, 'unsupported_keys' do
  subject { described_class.apply(build_schema(schema), build_value(value, opts)) }

  let(:schema) do
    {
      type: :object,
      properties: {
        os: {
          type: :array,
          items: {
            type: :string
          }
        },
        arch: {
          type: :string,
          only: {
            os: ['linux']
          }
        }
      },
      additionalProperties: false,
    }
  end

  describe 'given a supported key' do
    let(:value) { { os: ['linux'], arch: 'str' } }
    it { should serialize_to os: ['linux'], arch: 'str' }
    it { should_not have_msg }
  end

  describe 'given an unknown key' do
    let(:value) { { os: ['osx'], arch: 'str' } }

    describe 'support turned off (default)', support: false do
      it { should serialize_to os: ['osx'], arch: 'str' }
      it { should_not have_msg }
    end

    describe 'support turned on', support: true do
      it { should serialize_to os: ['osx'], arch: 'str' }
      it { should have_msg [:warn, :arch, :unsupported, on_key: 'os', on_value: 'osx', key: 'arch', value: 'str'] }
    end
  end

  describe 'given an unknown key on multiple supporting values (multi-ox)' do
    let(:value) { { os: ['linux', 'osx'], arch: 'str' } }

    describe 'support turned off (default)', support: false do
      it { should serialize_to os: ['linux', 'osx'], arch: 'str' }
      it { should_not have_msg }
    end

    describe 'support turned on', support: true do
      it { should serialize_to os: ['linux', 'osx'], arch: 'str' }
      it { should_not have_msg }
    end
  end
end
