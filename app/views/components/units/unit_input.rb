module Components
  module Units
    class UnitInput < React::Component::Base
      param :unit, type: String
      param :value
      param :on_change, type: Proc

      def render
        div.row do
          label(className: "col-xs-4 col-form-label", style: {"textAlign"=>"right"}) {
            params.unit
          }
          div(className: "col-xs-8") {
            input(
              type: :text,
              value: params.value,
              className: "form-control"
            ).on(:change) {|e|
              params.on_change(e.target.value.to_f)
            }
          }
        end
      end
    end
  end
end
