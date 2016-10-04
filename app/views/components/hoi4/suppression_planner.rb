module Components
  module Hoi4
    class SuppressionPlanner < React::Component::Base
      before_mount do
        setup_suppression_level 1, 0
      end

      def setup_suppression_level(cav, mp)
        cav = cav.to_i
        cav = 0 if cav < 0
        cav = 25 if cav > 25
        mp = mp.to_i
        mp = 0 if mp < 0
        mp = 1 if mp > 1
        state.cav! cav
        state.mp! mp
        if mp == 1
          state.suppression! 3*cav
        else
          state.suppression! 2*cav
        end
      end

      def render
        div do
          h3 do
            "Suppression Division"
          end
          SuppressionDivision(
            cav: state.cav,
            mp: state.mp,
            suppression: state.suppression,
            on_change: proc{|cav, mp|
              setup_suppression_level(cav, mp)
            }
          )
          h3 do
            "Suppression Summary"
          end
          SuppressionSummary(suppression: state.suppression)
        end
      end
    end
  end
end
