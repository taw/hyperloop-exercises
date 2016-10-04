class Hoi4Controller < ApplicationController
  def fleet_designer
    render_component
  end

  def equipment_designer
    render_component
  end

  def suppression_planner
    render_component
  end
end
