describe Travis::Yml::Schema::Def::Notification::Slack, 'structure' do
  subject { Travis::Yml.schema[:definitions][:notification][:slack] }

  # it { puts JSON.pretty_generate(subject) }

  it do
    should eq(
      '$id': :slack,
      title: 'Slack',
      normal: true,
      anyOf: [
        {
          type: :object,
          properties: {
            rooms: {
              '$ref': '#/definitions/type/secures'
            },
            template: {
              '$ref': '#/definitions/notification/templates'
            },
            enabled: {
              type: :boolean
            },
            disabled: {
              type: :boolean
            },
            on_pull_requests: {
              type: :boolean
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
