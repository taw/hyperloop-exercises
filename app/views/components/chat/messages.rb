module Components
  module Chat
    class Messages < React::Component::Base
      def render
        # eventually we will loop and display each message
        # for now we will just display one as an example
        Message()
      end
    end
  end
end
