describe Travis::Yml::Schema::Def::Ruby do
  subject { Travis::Yml.schema[:definitions][:language][:ruby] }

  # it { puts JSON.pretty_generate(subject) }

  it do
    should eq(
      '$id': :ruby,
      title: 'Ruby',
      type: :object,
      properties: {
        rvm: {
          '$ref': '#/definitions/type/strs',
          aliases: [
            :ruby,
            :rbenv
          ],
          flags: [
            :expand
          ],
          only: {
            language: [
              'ruby'
            ]
          }
        },
        gemfile: {
          '$ref': '#/definitions/type/strs',
          aliases: [
            :gemfiles
          ],
          flags: [
            :expand
          ],
          only: {
            language: [
              'ruby'
            ]
          }
        },
        jdk: {
          '$ref': '#/definitions/type/jdks',
          flags: [
            :expand
          ],
          only: {
            language: [
              'ruby'
            ]
          },
        },
        bundler_args: {
          type: :string,
          only: {
            language: [
              'ruby'
            ]
          }
        }
      },
      normal: true
    )
  end
end
