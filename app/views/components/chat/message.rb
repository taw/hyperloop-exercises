module Components
  module Chat
    class Message < React::Component::Base
      def render
        FormattedDiv(markdown: "This **Markdown** will eventually be a message")
      end
    end
  end
end
