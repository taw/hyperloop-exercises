module Components
  module Hoi4
    class SuppressionDivision < React::Component::Base
      param :mp
      param :cav
      param :suppression
      param :on_change, type: Proc

      def render
        div do
          CountInput(
            name: "Cavalry",
            count: params.cav,
            on_change: proc{|v|
              params.on_change(v, params.mp)
            }
          )
          CountInput(
            name: "Military Police",
            count: params.mp,
            on_change: proc{|v|
              params.on_change(params.cav, v)
            }
          )
          div(className: "row") do
            label(className: "col-xs-4 col-form-label", style: {"textAlign"=>"right"}) {
              "Suppression per division"
            }
            div(className: "col-xs-8") {
              input(
                type: :text,
                value: "#{params.suppression}",
                className: "form-control",
                disabled: true,
              )
            }
          end
        end
      end
    end
  end
end
