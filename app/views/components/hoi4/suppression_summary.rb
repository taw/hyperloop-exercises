require "suppression_map"

module Components
  module Hoi4
    class SuppressionSummary < React::Component::Base
      param :suppression

      before_update do
        @states_by_count = nil
        @total_divisions_needed = nil
      end

      def states_by_count
        unless @states_by_count
          @states_by_count = {}
          SuppressionMap::DATA.each do |vp, states|
            suppression_needed = (vp * 1.00).floor
            divisions_needed = (suppression_needed / params.suppression).ceil
            @states_by_count[divisions_needed] ||= []
            @states_by_count[divisions_needed] += states
          end
        end
        @states_by_count
      end

      def total_divisions_needed
        @total_divisions_needed ||= states_by_count.map{|c,s| c*s.size}.inject(0, &:+)
      end

      def render
        div do
          div(className: "row") do
            "You need #{total_divisions_needed} divisions to suppress the world"
          end
          states_by_count.sort.reverse.each do |count, states|
            next if count == 0
            div(className: "row") do
              div(className: "col-xs-4") do
                "#{count}"
              end
              ul(className: "col-xs-8") do
                states.sort.each do |state|
                  li{ state }
                end
              end
            end
          end
        end
      end
    end
  end
end
