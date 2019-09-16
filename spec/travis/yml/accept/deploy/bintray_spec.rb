describe Travis::Yml, 'bintray' do
  subject { described_class.apply(parse(yaml)) }

  describe 'file' do
    describe 'given a str' do
      yaml %(
        deploy:
          provider: bintray
          file: str
      )
      it { should serialize_to deploy: [provider: 'bintray', file: 'str'] }
      it { should_not have_msg }
    end
  end

  describe 'user' do
    describe 'given a secure' do
      yaml %(
        deploy:
          provider: bintray
          user:
            secure: secure
      )
      it { should serialize_to deploy: [provider: 'bintray', user: { secure: 'secure' }] }
      it { should_not have_msg }
    end
  end

  describe 'key' do
    describe 'given a secure' do
      yaml %(
        deploy:
          provider: bintray
          key:
            secure: secure
      )
      it { should serialize_to deploy: [provider: 'bintray', key: { secure: 'secure' }] }
      it { should_not have_msg }
    end
  end

  describe 'passphrase' do
    describe 'given a secure' do
      yaml %(
        deploy:
          provider: bintray
          passphrase:
            secure: secure
      )
      it { should serialize_to deploy: [provider: 'bintray', passphrase: { secure: 'secure' }] }
      it { should_not have_msg }
    end
  end

  describe 'dry_run' do
    describe 'given a bool' do
      yaml %(
        deploy:
          provider: bintray
          dry_run: true
      )
      it { should serialize_to deploy: [provider: 'bintray', dry_run: true] }
      it { should_not have_msg }
    end
  end
end
