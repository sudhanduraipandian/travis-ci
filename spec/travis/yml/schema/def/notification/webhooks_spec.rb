describe Travis::Yml::Schema::Def::Notification::Webhooks, 'structure' do
  subject { Travis::Yml.schema[:definitions][:notification][:webhooks] }

  # it { puts JSON.pretty_generate(subject) }

  it do
    should eq(
      '$id': :webhooks,
      title: 'Webhooks',
      normal: true,
      anyOf: [
        {
          type: :object,
          properties: {
            enabled: {
              type: :boolean
            },
            disabled: {
              type: :boolean
            },
            urls: {
              anyOf: [
                {
                  type: :array,
                  normal: true,
                  items: {
                    '$ref': '#/definitions/type/secure',
                    strict: false
                  }
                },
                {
                  '$ref': '#/definitions/type/secure',
                  strict: false
                },
              ]
            },
            on_start: {
              '$ref': '#/definitions/notification/frequency'
            },
            on_cancel: {
              '$ref': '#/definitions/notification/frequency'
            },
            on_error: {
              '$ref': '#/definitions/notification/frequency'
            },
            on_success: {
              '$ref': '#/definitions/notification/frequency'
            },
            on_failure: {
              '$ref': '#/definitions/notification/frequency'
            }
          },
          additionalProperties: false,
          normal: true,
          prefix: {
            key: :urls
          },
          aliases: [
            :webhook
          ],
          changes: [
            {
              change: :enable,
            }
          ]
        },
        {
          type: :array,
          normal: true, # this should not be normal
          items: {
            '$ref': '#/definitions/type/secure',
            strict: false
          }
        },
        {
          '$ref': '#/definitions/type/secure',
          strict: false
        },
        {
          type: :boolean
        }
      ]
    )
  end
end
