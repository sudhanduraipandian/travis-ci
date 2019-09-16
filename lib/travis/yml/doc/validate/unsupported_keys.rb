# frozen_string_literal: true
require 'travis/yml/doc/validate/base'

module Travis
  module Yml
    module Doc
      module Validate
        class UnsupportedKeys < Base
          register :unsupported_key

          def apply
            unsupported if apply?
            value
          end

          private

            def apply?
              enabled? && value.map? && value.given?
            end

            def unsupported
              value.each do |key, value|
                support = Value::Support.new(schema.support(key), value.supporting, key)
                msgs(value, support.msgs) unless support.supported?
              end
            end

            def msgs(value, msgs)
              msgs.each do |msg|
                value.warn :unsupported, msg.merge(key: value.key, value: value.serialize, line: value.key.line)
              end
            end

            def enabled?
              value.support?
            end
        end
      end
    end
  end
end
