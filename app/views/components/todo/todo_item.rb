module Components
  module Todo
    class TodoItem < React::Component::Base
      param :item
      param :on_done, type: Proc
      def render
        li do
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
