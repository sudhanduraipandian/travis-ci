describe Travis::Yml, 'inherit' do
  subject { described_class.apply(parse(yaml), opts) }

  describe 'notifications' do
    describe 'given on_success: :always and a map on emails' do
      yaml %(
        notifications:
          on_success: always
          email:
            recipients:
              - str
      )
      it { should serialize_to notifications: { email: { recipients: ['str'], on_success: 'always' } } }
      it { should_not have_msg }
    end
  end
end
