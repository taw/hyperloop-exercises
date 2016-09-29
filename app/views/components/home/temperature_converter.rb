module Components
  module Home
    class TemperatureConverter < React::Component::Base
      before_mount do
        set_celcius 0
      end

      def set_celcius(v)
        state.celsius! v
        state.fahrenheit! (v*9/5)+32
      end

      def set_fahrenheit(v)
        state.fahrenheit! v
        state.celsius! ((v-32)*5/9)
      end

      def render
        div(style: {"margin" => "1rem 0"}) do
          UnitInput(
            unit: "Celcius",
            value: state.celsius,
            on_change: proc{|v|
              set_celcius v
            }
          )
          UnitInput(
            unit: "Fahrenheit",
            value: state.fahrenheit,
            on_change: proc{|v|
              set_fahrenheit v
            }
          )
        end
      end
    end
  end
end
