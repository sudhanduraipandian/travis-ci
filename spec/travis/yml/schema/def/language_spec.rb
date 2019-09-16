describe Travis::Yml::Schema::Def::Language do
  subject { Travis::Yml.schema[:definitions][:type][:language] }

  # it { puts JSON.pretty_generate(subject) }

  it do
    should eq(
      '$id': :language,
      title: 'Language',
      summary: 'Language support',
      example: 'ruby',
      type: :string,
      enum: [
        'android',
        'c',
        'clojure',
        'cpp',
        'crystal',
        'csharp',
        'd',
        'dart',
        'elixir',
        'elm',
        'erlang',
        'go',
        'groovy',
        'haskell',
        'haxe',
        'java',
        'julia',
        'nix',
        'node_js',
        'objective-c',
        'perl',
        'perl6',
        'php',
        'python',
        'r',
        'ruby',
        'rust',
        'scala',
        'shell',
        'smalltalk',
        '__connie__',
        '__amethyst__',
        '__garnet__',
        '__stevonnie__',
        '__opal__',
        '__sardonyx__',
        '__onion__',
        '__cookiecat__'
      ],
      downcase: true,
      defaults: [
        {
          value: 'ruby',
          only: {
            os: [
              'linux',
              'windows'
            ]
          }
        },
        {
          value: 'objective-c',
          only: {
            os: [
              'osx'
            ]
          }
        },
      ],
      values: {
        cpp: {
          aliases: [
            'c++'
          ]
        },
        go: {
          aliases: [
            'golang'
          ]
        },
        java: {
          aliases: [
            'jvm'
          ]
        },
        node_js: {
          aliases: [
            'javascript',
            'js',
            'node'
          ]
        },
        'objective-c': {
          aliases: [
            'objective_c',
            'swift'
          ]
        },
        shell: {
          aliases: [
            'bash',
            'generic',
            'minimal',
            'sh'
          ]
        },
        __connie__: {
          deprecated: 'experimental stack language',
          flags: [
            :internal
          ]
        },
        __amethyst__: {
          deprecated: 'experimental stack language',
          flags: [
            :internal
          ]
        },
        __garnet__: {
          deprecated: 'experimental stack language',
          flags: [
            :internal
          ]
        },
        __stevonnie__: {
          deprecated: 'experimental stack language',
          flags: [
            :internal
          ]
        },
        __opal__: {
          deprecated: 'experimental stack language',
          flags: [
            :internal
          ]
        },
        __sardonyx__: {
          deprecated: 'experimental stack language',
          flags: [
            :internal
          ]
        },
        __onion__: {
          deprecated: 'experimental stack language',
          flags: [
            :internal
          ]
        },
        __cookiecat__: {
          deprecated: 'experimental stack language',
          flags: [
            :internal
          ]
        }
      }
    )
  end
end
