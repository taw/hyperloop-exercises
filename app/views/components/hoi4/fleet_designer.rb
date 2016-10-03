require "ship"

module Components
  module Hoi4
    class FleetDesigner < React::Component::Base
      before_mount do
        state.ships! Hash.new(0)
      end

      def render
        div do
          h3 do
            "Fleet Composition"
          end
          Ship.all.each do |name, ship|
            CountInput(
              name: ship.name,
              count: state.ships[ship.name],
              on_change: proc{|v|
                v = 0 if v < 0
                state.ships! state.ships.merge(ship.name => v)
              })
          end
          h3 do
            "Fleet Cost"
          end
          FleetCost(ships: state.ships)
        end
      end
    end
  end
end
