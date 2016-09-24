module Components
  module Chat
    class App < React::Component::Base
      def render
        div do
          Nav()
          Messages()
          InputBox()
        end
      end
    end
  end
end
