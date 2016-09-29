module Components
  module Home
    class BmiCalculator < React::Component::Base
      before_mount do
        state.height! 170
        state.weight! 70
        calculate_bmi!
      end

      def calculate_bmi!
        state.bmi!(state.weight / (state.height/100) ** 2)
      end

      def calculate_weight!
        state.weight!(state.bmi * (state.height/100) ** 2)
      end

      def render
        div(style: {"margin" => "1rem 0"}) do
          UnitInput(
            unit: "Height [cm]",
            value: state.height,
            on_change: proc{|v|
              state.height! v
              calculate_bmi!
            }
          )
          UnitInput(
            unit: "Weight [kg]",
            value: state.weight,
            on_change: proc{|v|
              state.weight! v
              calculate_bmi!
            }
          )
          UnitInput(
            unit: "BMI [kg/m2]",
            value: state.bmi,
            on_change: proc{|v|
              state.bmi! v
              calculate_weight!
            }
          )
        end
      end
    end
  end
end
