module Components
  module Home
    class TodoInput < React::Component::Base
      param :item
      param :on_change
      param :on_submit
      def render
        li do
          input(
            type: :text,
            value: params.item,
            style: {"width" => "80%"},
            placeholder: "What do you need to do?",
          ).on(:change) {|e|
            puts "CHANGE #{e.target.value}"
            params.on_change(e.target.value)
          }
        end
      end
    end
  end
end
