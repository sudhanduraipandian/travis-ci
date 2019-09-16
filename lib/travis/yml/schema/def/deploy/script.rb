# frozen_string_literal: true
module Travis
  module Yml
    module Schema
      module Def
        module Deploy
          class Script < Deploy
            register :script

            def define
              map :script, to: :str
            end
          end
        end
      end
    end
  end
end
