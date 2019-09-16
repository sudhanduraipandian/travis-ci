# frozen_string_literal: true
require 'travis/yml/schema/type'

module Travis
  module Yml
    module Schema
      module Def
        class Imports < Type::Seq
          register :imports

          def define
            title 'Imports'

            summary 'Build configuration imports'

            description <<~str
              Import YAML config snippets that can be shared across repositories.

              See [the docs](...) for details.
            str

            normal
            type :import
            export
          end
        end

        class Import < Type::Map
          register :import

          def define
            normal
            prefix :source

            map :source, to: :str, summary: 'The source to import build config from', eg: './import.yml@v1'
            map :mode, to: :str, values: ['merge', 'deep_merge'], summary: 'How to merge the imported config into the target config'

            export
          end
        end
      end
    end
  end
end
