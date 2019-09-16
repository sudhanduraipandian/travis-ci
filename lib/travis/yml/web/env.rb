# frozen_string_literal: true
module Travis::Yml::Web
  module Env
    extend self

    def env
      ENV['RACK_ENV'] || ENV['ENV']
    end

    %w{development staging test production}.each do |e|
      define_method(:"#{e}?") { env == e }
    end
  end
end
