module Components
  module Todo
    class TodoItem < React::Component::Base
      param :time_added, type: Time
      param :item
      param :on_done, type: Proc
      def render
        tr do
          td(style: {border: "1px solid black"}) do
            params.time_added.strftime("%H:%M:%S %d-%m-%Y")
          end
          td(style: {border: "1px solid black"}) do
          end
          td(style: {border: "1px solid black"}) do
            span() do
              params.item
            end.on(:click) do
              params.on_done
            end
          end
        end
      end
    end
  end
end
