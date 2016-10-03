module Components
  module Hoi4
    class EquipmentCost < React::Component::Base
      param :equipment

      def total_count
        params.equipment.values.inject(0, &:+)
      end

      def total_ic
        params.equipment.map{|name, count|
          Equipment[name].build_cost_ic * count
        }.inject(0, &:+)
      end

      def render
        ul do
          li do
            "Count - #{total_count}"
          end
          li do
            "Production Cost - #{total_ic}"
          end
        end
      end
    end
  end
end
