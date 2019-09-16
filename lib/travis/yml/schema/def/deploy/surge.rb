# frozen_string_literal: true
module Travis
  module Yml
    module Schema
      module Def
        module Deploy
          class Surge < Deploy
            register :surge

            def define
              map :login,   to: :secure, strict: false
              map :token,   to: :secure
              map :project, to: :str
              map :domain,  to: :str
            end
          end
        end
      end
    end
  end
end
