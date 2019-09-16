# frozen_string_literal: true
require 'registry'
require 'yaml'

module Travis
  module Yml
    module Docs
      module Examples
        def self.build(parent, node, opts = {})
          node ? Node[node.type].new(parent, node, opts) : []
        end

        class Node < Obj.new(:parent, :node, opts: {})
          include Memoize, Registry

          def build(*args)
            Examples.build(self, *args)
          end

          def key
            opts[:key]
          end

          # def examples
          #   []
          # end
          #
          # def example
          # end

          def yaml
            examples.map do |example|
              to_yaml(example)
            end
          end

          def to_yaml(obj)
            obj = symbolize(obj)
            yml = YAML.dump(obj)
            yml = yml.sub(/^--- ?/, '')
            yml = yml.sub("...\n", '')
            yml = yml.sub("'on'", 'on')
            yml = yml.strip
          end
        end
      end
    end
  end
end
