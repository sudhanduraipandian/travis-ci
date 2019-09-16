require 'travis/yml/support/merge'

module Travis
  module Yml
    module Parts
      # With the following config sources, sent/included in this order:
      #
      #   # from api payload
      #   script: ./api
      #   env:
      #     global:
      #       api: true
      #       foo: 1
      #
      #   # from .travis.yml, merge_mode: deep_merge
      #   script: ./travis_yml
      #   env:
      #     global:
      #       travis_yml: true
      #       foo: 2
      #
      #   # from imported.yml, merge_mode: deep_merge
      #   script: ./imported
      #   env:
      #     global:
      #       travis_yml: false
      #       imported: true
      #       foo: 3
      #
      #
      # We expect the result:
      #
      #   script: ./api
      #   env:
      #     global:
      #       api: true
      #       foo: 1
      #       travis_yml: true
      #       imported: true
      #
      # This is because the order of the list represents the order of
      # precedence, what's listed first wins.

      class Merge < Struct.new(:parts)
        def apply
          parts.inject do |lft, rgt|
            mode = rgt.respond_to?(:merge_mode) ? rgt.merge_mode : :merge
            Support::Merge.new(lft.to_h, rgt.to_h, mode).apply
          end
        end
      end
    end
  end
end
