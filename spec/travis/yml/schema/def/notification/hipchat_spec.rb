describe Travis::Yml::Schema::Def::Notification::Hipchat, 'structure' do
  subject { Travis::Yml.schema[:definitions][:notification][:hipchat] }

  # it { puts JSON.pretty_generate(subject) }

  it do
    should eq(
      '$id': :hipchat,
      title: 'Hipchat',
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
            rooms: {
              '$ref': '#/definitions/type/secures'
            },
            format: {
              type: :string,
              enum: [
                'html',
                'text'
              ]
            },
            notify: {
              type: :boolean
            },
            on_pull_requests: {
              type: :boolean
            },
            template: {
              '$ref': '#/definitions/notification/templates'
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
            key: :rooms
          },
          changes: [
            {
              change: :enable,
            }
          ]
        },
        {
          '$ref': '#/definitions/type/secures'
        },
        {
          type: :boolean
        }
      ]
    )
  end
end
