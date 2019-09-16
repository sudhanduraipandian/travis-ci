# frozen_string_literal: true
require 'travis/yml/doc/change/base'

module Travis
  module Yml
    module Doc
      module Change
        class Wrap < Base
          def apply
            wrap? ? wrap : value
          end

          def wrap?
            schema.seq? && !value.seq?
          end

          def wrap
            node = build([value])
            node
          end
        end
      end
    end
  end
end
