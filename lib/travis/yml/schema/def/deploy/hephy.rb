# frozen_string_literal: true
module Travis
  module Yml
    module Schema
      module Def
        module Deploy
          class Hephy < Deploy
            register :hephy

            def define
              map :controller,  to: :str
              map :username,    to: :secure, strict: false
              map :password,    to: :secure
              map :app,         to: :str
              map :cli_version, to: :str
              map :verbose,     to: :bool
            end
          end
        end
      end
    end
  end
end
