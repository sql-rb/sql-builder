# frozen_string_literal: true

module SQL
  module Composer
    module Nodes
      module Operations
        class Eql
          attr_reader :left, :right

          def initialize(left, right)
            @left, @right = left, right
          end

          def or(other)
            Operations::Or.new(self, other)
          end
          alias_method :OR, :or

          def to_s
            "#{left.to_s} == #{right.to_s}"
          end
        end
      end
    end
  end
end
