require "suppression_map"

module Components
  module Hoi4
    class SuppressionSummary < React::Component::Base
      param :suppression

      def render
        div do
          "Hoi4::SuppressionSummary"
        end
      end
    end
  end
end
