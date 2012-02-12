# encoding: utf-8
module Origin
  module Selectable
    module Gte

      def gte(criterion = nil)
        __override__(criterion, "$gte")
      end

      ::Symbol.class_eval do

        def gte
          Key.new(self, "$gte")
        end
      end
    end
  end
end