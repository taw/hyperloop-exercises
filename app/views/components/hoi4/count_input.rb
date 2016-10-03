module Components
  module Hoi4
    class CountInput < React::Component::Base
      param :name, type: String
      param :count
      param :on_change, type: Proc

      def render
        div(className: "row") do
          label(className: "col-xs-4 col-form-label", style: {"textAlign"=>"right"}) {
            params.name
          }
          div(className: "col-xs-8") {
            input(
              type: :text,
              value: params.count,
              className: "form-control"
            ).on(:change) {|e|
              params.on_change(e.target.value.to_i)
            }
          }
        end
      end
    end
  end
end
