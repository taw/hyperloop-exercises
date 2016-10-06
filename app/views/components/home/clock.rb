module Components
  module Home
    class Clock < React::Component::Base
      before_mount do
        @timer = every(1) { force_update! }
      end

      def render
        div(class: "row") do
          div(class: "col-sm-6") do
            h1 do
              "The current time"
            end
          end
          div(class: "col-sm-6") do
            strong(style: {color: "red"}) do
              "#{Time.now}"
            end
          end
        end
      end
    end
  end
end
