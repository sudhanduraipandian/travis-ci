# frozen_string_literal: true
module Travis
  module Yml
    module Schema
      module Def
        module Deploy
          # dpl readme says it's api-key, our docs say it's api_key
          class Engineyard < Deploy
            register :engineyard

            def define
              map :email,       to: :secure, strict: false
              map :password,    to: :secure
              map :api_key,     to: :secure
              map :account,     to: :secure, strict: false
              map :app,         to: :map, type: :str
              map :env,         to: :map, type: :str, alias: :environment
              map :migrate,     to: :str
            end
          end
        end
      end
    end
  end
end
