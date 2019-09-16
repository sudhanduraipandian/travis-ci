describe Travis::Yml::Schema::Def::Addon::Sonarcloud do
  subject { Travis::Yml.schema[:definitions][:addon][:sonarcloud] }

  # it { puts JSON.pretty_generate(subject) }

  it do
    should eq(
      '$id': :sonarcloud,
      title: 'Sonarcloud',
      anyOf: [
        {
          type: :object,
          properties: {
            organization: {
              type: :string
            },
            token: {
              '$ref': '#/definitions/type/secure'
            },
            github_token: {
              '$ref': '#/definitions/type/secure',
              deprecated: 'not supported any more'
            },
            branches: {
              '$ref': '#/definitions/type/strs',
              deprecated: 'not supported any more'
            }
          },
          additionalProperties: false,
          normal: true,
          changes: [
            {
              change: :enable
            }
          ],
        },
        {
          type: :boolean
        }
      ],
      normal: true,
    )
  end
end
