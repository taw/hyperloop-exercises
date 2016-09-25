module Components
  module Chat
    class Nav < React::Component::Base
      param :login, type: Proc

      before_mount do
        state.current_user_name! nil
        state.user_name_input! ""
      end

      def render
        div do
          input(type: :text, value: state.user_name_input, placeholder: "Enter Your Handle"
          ).on(:change) do |e|
            state.user_name_input! e.target.value
          end
          button(type: :button, class: "btn btn-primary") { "login!" }.on(:click) do
            login!
          end if valid_new_input?
        end
      end

      def valid_new_input?
        state.user_name_input.present? && state.user_name_input != state.current_user_name
      end

      def login!
        state.current_user_name! state.user_name_input
        params.login(state.user_name_input)
      end
    end
  end
end
