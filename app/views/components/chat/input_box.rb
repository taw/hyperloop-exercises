module Components
  module Chat
    class InputBox < React::Component::Base
      def render
        div do
          "An input box to send new messages will".br
          "go here plus a display of the formatted markdown".br
          FormattedDiv()
        end
      end
    end
  end
end
