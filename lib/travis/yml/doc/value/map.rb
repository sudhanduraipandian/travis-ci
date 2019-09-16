# frozen_string_literal: true
require 'travis/yml/doc/value/node'

module Travis
  module Yml
    module Doc
      module Value
        class Map < Node
          include Enumerable

          def type
            :map
          end

          def key?(key)
            value.key?(key)
          end

          def keys
            value.keys
          end

          def values
            value.values
          end

          def values_at(*keys)
            value.values_at(*keys)
          end

          def size
            value.size
          end

          def each(&block)
            value.each(&block)
          end

          def all?(&block)
            value.all?(&block)
          end

          def [](key)
            value[key]
          end

          def []=(key, node)
            node.parent.delete(node) if node.parent
            node.parent = self
            node.key = key
            value[key] = node
          end

          def move(key, target) # not sure this is needed?
            node = value.delete(key)
            self[target] = node
          end

          def replace(node, other)
            self[node.key] = other
          end

          def delete(node)
            node = self[node] unless node.is_a?(Node)
            value.delete(node.key)
          end

          def clear
            value.clear
            self
          end

          SUPPORTING = %w(language os dist)

          def supporting
            keys  = SUPPORTING.select { |key| key?(key) && self[key].given? }
            value = keys.map { |key| [key, compact(self[key].serialize)] }.to_h
            value = value.reject { |_, value| value.nil? || value.empty? }
            super.merge(value)
          end

          def msg(level, code, args = {})
            key, value = opts[:detected], self[opts[:detected]]
            args = args.merge(key.to_sym => value.value) if key && value
            super
          end

          def serialize(symbolize = true)
            value.map { |key, obj| [symbolize ? key.to_sym : key, obj.serialize] }.to_h
          end
        end
      end
    end
  end
end
