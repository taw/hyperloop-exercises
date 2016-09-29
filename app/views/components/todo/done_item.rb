module Components
  module Todo
    class DoneItem < React::Component::Base
      param :item
      param :on_undo, type: Proc
      def render
        li do
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
