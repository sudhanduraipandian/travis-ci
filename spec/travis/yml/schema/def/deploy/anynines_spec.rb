describe Travis::Yml::Schema::Def::Deploy::Anynines do
  subject { Travis::Yml.schema[:definitions][:deploy][:anynines] }

  # it { puts JSON.pretty_generate(subject) }

  it do
    should eq(
      '$id': :anynines,
        title: 'Anynines',
        anyOf: [
          {
            type: :object,
            properties: {
              provider: {
                type: :string,
                enum: [
                  'anynines'
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
              username: {
                '$ref': '#/definitions/type/secure',
                strict: false
              },
              password: {
                '$ref': '#/definitions/type/secure'
              },
              organization: {
                type: :string
              },
              space: {
                type: :string
              },
              app_name: {
                type: :string
              },
              buildpack: {
                type: :string
              },
              manifest: {
                type: :string
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
              'anynines'
            ],
            strict: true
          }
        ],
        normal: true
    )
  end
end
