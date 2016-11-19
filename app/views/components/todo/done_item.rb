module Components
  module Todo
    class DoneItem < React::Component::Base
      param :time_added, type: Time
      param :time_completed, type: Time
      param :item
      param :on_undo, type: Proc
      def render
        tr do
          td(style: {border: "1px solid black"}) do
            params.time_added.strftime("%H:%M:%S %d-%m-%Y")
          end
          td(style: {border: "1px solid black"}) do
            params.time_completed.strftime("%H:%M:%S %d-%m-%Y")
          end
          td(style: {border: "1px solid black"}) do
            span(style: {textDecoration: "line-through", fontStyle: "italic"}) do
              params.item
            end.on(:click) do
              params.on_undo
            end
          end
        end
      end
    end
  end
end
