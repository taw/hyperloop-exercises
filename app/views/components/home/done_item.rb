module Components
  module Home
    class DoneItem < React::Component::Base
      param :item
      param :on_undo
      def render
        li do
          span(style: {textDecoration: "line-through", fontStyle: "italic"}) do
            params.item
          end.on(:click) do
            puts "CLICK DONE"
            params.on_undo
          end
        end
      end
    end
  end
end
