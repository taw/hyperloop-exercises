require "equipment"

module Components
  module Hoi4
    class EquipmentDesigner < React::Component::Base
      before_mount do
        state.equipment! Hash.new(0)
      end

      def render
        div do
          h3 do
            "Equipment Designer"
          end
          Equipment.all.each do |name, equipment|
            CountInput(
              name: name,
              count: state.equipment[name],
              on_change: proc{|v|
                v = 0 if v < 0
                state.equipment! state.equipment.merge(name => v)
              })
          end
          h3 do
            "Equipment Cost"
          end
          EquipmentCost(equipment: state.equipment)
        end
      end
    end
  end
end
