module Components
  module Todo
    class TodoList < React::Component::Base
      before_mount do
        state.todo! [
          {text: "Buy a cat", id: 1, time_added: Time.now, time_completed: Time.now },
          {text: "Pet a cat", id: 2, time_added: Time.now },
        ]
        state.current_item! ""
      end

      def render
        table(style: {width: "40em"}) do
          tbody do
            tr do
              th{ "Time Added" }
              th{ "Time Completed" }
              th{ "Item" }
            end

            state.todo.select{|i| i[:time_completed]}.each do |item|
              DoneItem(
                item: item[:text],
                time_added: item[:time_added],
                time_completed: item[:time_completed],
                on_undo: proc{
                state.todo! state.todo.map{|i|
                  if i[:id] == item[:id]
                    i.merge(time_completed: nil)
                  else
                    i
                  end
                }
              })
            end

            state.todo.select{|i| !i[:time_completed]}.each do |item|
              TodoItem(
                item: item[:text],
                time_added: item[:time_added],
                on_done: proc{
                state.todo! state.todo.map{|i|
                  if i[:id] == item[:id]
                    i.merge(time_completed: Time.now)
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
                state.todo! state.todo + [{text: new_value, time_added: Time.now, id: state.todo.size+1}]
                state.current_item! ""
            })
          end
        end
      end
    end
  end
end
