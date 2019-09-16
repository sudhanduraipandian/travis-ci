describe Travis::Yml::Schema::Def::Elm do
  subject { Travis::Yml.schema[:definitions][:language][:elm] }

  # it { puts JSON.pretty_generate(subject) }

  it do
    should eq(
      '$id': :elm,
        title: 'Elm',
        type: :object,
        properties: {
          elm: {
            '$ref': '#/definitions/type/strs',
            flags: [
              :expand
            ],
            only: {
              language: [
                'elm'
              ]
            }
          },
          node_js: {
            '$ref': '#/definitions/type/strs',
            flags: [
              :expand
            ],
            only: {
              language: [
                'elm'
              ]
            }
          },
          elm_format: {
            type: :string,
            only: {
              language: [
                'elm'
              ]
            }
          },
          elm_test: {
            type: :string,
            only: {
              language: [
                'elm'
              ]
            }
          }
        },
        normal: true
    )
  end
end
