module Components
  module Chat
    class FormattedDiv < React::Component::Base
      param :markdown, type: String
      def render
        params.markdown
      end
    end
  end
end
