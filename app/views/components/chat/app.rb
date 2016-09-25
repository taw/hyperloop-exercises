module Components
  module Chat
    class App < React::Component::Base
      def render
        div do
          Nav(login: method(:login))
          Messages()
          InputBox()
        end
      end

      def login(user_name)
        puts "*** #{user_name} has logged in"
      end
    end
  end
end
