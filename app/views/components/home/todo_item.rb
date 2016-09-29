module Components
  module Home
    class TodoItem < React::Component::Base
      param :item
      param :on_done
      def render
        li do
          span() do
            params.item
          end.on(:click) do
            puts "CLICK TODO"
            params.on_done
          end
        end
      end
    end
  end
end
