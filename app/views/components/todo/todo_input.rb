module Components
  module Todo
    class TodoInput < React::Component::Base
      param :item
      param :on_change, type: Proc
      param :on_submit, type: Proc
      def render
        tr do
          td(style: {border: "1px solid black"}) do
          end
          td(style: {border: "1px solid black"}) do
          end
          td(style: {border: "1px solid black"}) do
            input(
              type: :text,
              value: params.item,
              style: {"width" => "100%"},
              placeholder: "What do you need to do?",
            ).on(:change) {|e|
              params.on_change(e.target.value)
            }.on(:key_press) {|e|
              if e.key == "Enter"
                params.on_submit(e.target.value)
              end
            }
          end
        end
      end
    end
  end
end
