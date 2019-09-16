describe Travis::Yml::Schema::Def::Deploy::AzureWebApps do
  subject { Travis::Yml.schema[:definitions][:deploy][:azure_web_apps] }

  # it { puts JSON.pretty_generate(subject) }

  it do
    should eq(
      '$id': :azure_web_apps,
        title: 'Azure Web Apps',
        anyOf: [
          {
            type: :object,
            properties: {
              provider: {
                type: :string,
                enum: [
                  'azure_web_apps'
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
              site: {
                type: :string
              },
              slot: {
                type: :string
              },
              username: {
                '$ref': '#/definitions/type/secure',
                strict: false
              },
              password: {
                '$ref': '#/definitions/type/secure'
              },
              verbose: {
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
              'azure_web_apps'
            ],
            strict: true
          }
        ],
        normal: true
    )
  end
end
