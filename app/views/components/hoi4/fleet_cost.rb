module Components
  module Hoi4
    class FleetCost < React::Component::Base
      param :ships

      def total_ships
        params.ships.values.inject(0, &:+)
      end

      def total_manpower
        params.ships.map{|name, count|
          Ship[name].manpower * count
        }.inject(0, &:+)
      end

      def total_ic
        params.ships.map{|name, count|
          Ship[name].ic * count
        }.inject(0, &:+)
      end

      def render
        ul do
          li do
            "Ships - #{total_ships}"
          end
          li do
            "Manpower - #{total_manpower}"
          end
          li do
            "Production Cost - #{total_ic}"
          end
        end
      end
    end
  end
end
