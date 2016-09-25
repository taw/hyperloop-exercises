module Components
  module Chat
    class InputBox < React::Component::Base
      def render
        div do
          "An input box to send new messages will".br
          "go here plus a display of the formatted markdown".br
          FormattedDiv(markdown: "This **Markdown** will get updated as the user types")
        end
      end
    end
  end
end
