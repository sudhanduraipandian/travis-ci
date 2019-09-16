describe Travis::Yml::Schema::Def::Deploy::Bintray do
  subject { Travis::Yml.schema[:definitions][:deploy][:bintray] }

  # it { puts JSON.pretty_generate(subject) }

  it do
    should eq(
      '$id': :bintray,
        title: 'Bintray',
        anyOf: [
          {
            type: :object,
            properties: {
              provider: {
                type: :string,
                enum: [
                  'bintray'
                ],
                strict: true
              },
              on: {
                '$ref': '#/definitions/deploy/conditions',
                aliases: [
                  :true
                ]
              },
              run: {
                '$ref': '#/definitions/type/strs',
              },
              allow_failure: {
                type: :boolean
              },
              cleanup: {
                type: :boolean
              },
              skip_cleanup: {
                type: :boolean,
                deprecated: 'not supported in dpl v2, use cleanup'
              },
              edge: {
                '$ref': '#/definitions/deploy/edge'
              },
              file: {
                type: :string
              },
              user: {
                '$ref': '#/definitions/type/secure',
                strict: false
              },
              key: {
                '$ref': '#/definitions/type/secure'
              },
              passphrase: {
                '$ref': '#/definitions/type/secure'
              },
              dry_run: {
                type: :boolean
              }
            },
            additionalProperties: false,
            normal: true,
            prefix: {
              key: :provider,
              only: [
                :str
              ]
            },
            required: [
              :provider
            ]
          },
          {
            type: :string,
            enum: [
              'bintray'
            ],
            strict: true
          }
        ],
        normal: true
    )
  end
end
