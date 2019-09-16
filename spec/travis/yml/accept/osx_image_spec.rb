describe Travis::Yml, 'osx_image' do
  subject { described_class.apply(parse(yaml), opts) }

  describe 'osx_image' do
    describe 'on osx' do
      describe 'given a str' do
        yaml %(
          os: osx
          osx_image: xcode8.2
        )
        it { should serialize_to os: ['osx'], osx_image: ['xcode8.2'] }
      end

      describe 'given a seq' do
        yaml %(
          os: osx
          osx_image:
          - xcode8.2
          - xcode9.4
        )
        it { should serialize_to os: ['osx'], osx_image: ['xcode8.2', 'xcode9.4'] }
      end
    end

    describe 'on linux' do
      yaml %(
        os: linux
        osx_image: xcode8.2
      )
      it { should serialize_to os: ['linux'], osx_image: ['xcode8.2'] }
      it { should have_msg [:warn, :osx_image, :unsupported, on_key: 'os', on_value: 'linux', key: 'osx_image', value: ['xcode8.2']] }
    end

    describe 'on multios' do
      yaml %(
        os:
        - linux
        - osx
        osx_image: xcode8.2
      )
      it { should serialize_to os: ['linux', 'osx'], osx_image: ['xcode8.2'] }
      it { should_not have_msg [:warn, :osx_image, :unsupported, on_key: 'os', on_value: 'linux', key: 'osx_image', value: ['xcode8.2']] }
    end
  end

  describe 'on jobs.include' do
    yaml %(
      jobs:
        include:
          - os: osx
            osx_image: xcode8.2
    )
    it { should serialize_to matrix: { include: [os: 'osx', osx_image: ['xcode8.2']] } }
  end
end
