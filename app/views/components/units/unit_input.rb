module Components
  module Units
    class UnitInput < React::Component::Base
      param :unit, type: String
      param :value
      param :on_change, type: Proc

      def render
        div(className: "row") do
          div(className: "col-xs-4") {
            h6 { params.unit }
          }
          div(className: "col-xs-8") {
            input(
              type: :text,
              value: params.value,
              style: {"width" => "100%"}
            ).on(:change) {|e|
              params.on_change(e.target.value.to_f)
            }
          }
        end
      end
    end
  end
end
