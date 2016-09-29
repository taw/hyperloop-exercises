module Components
  module Home
    class TodoList < React::Component::Base
      before_mount do
        state.todo! [
          {text: "Buy a cat", done: true, id: 1},
          {text: "Pet a cat", done: false, id: 2},
        ]
        state.current_item! ""
      end

      def render
        div(style: {"margin" => "1rem 0"}) do
          state.todo.select{|i| i[:done]}.each do |item|
            DoneItem(item: item[:text], on_undo: proc{
              state.todo! state.todo.map{|i|
                if i[:id] == item[:id]
                  i.merge(done: false)
                else
                  i
                end
              }
            })
          end
          state.todo.select{|i| !i[:done]}.each do |item|
            TodoItem(item: item[:text], on_done: proc{
              state.todo! state.todo.map{|i|
                if i[:id] == item[:id]
                  i.merge(done: true)
                else
                  i
                end
              }
            })
          end
          TodoInput(
            item: state.current_item,
            on_change: proc{|new_value|
              state.current_item! new_value
            },
            on_submit: proc{|new_value|
              state.todo! state.todo + [{text: new_value, done: false, id: state.todo.size+1}]
              state.current_item! ""
          })
        end
      end
    end
  end
end
