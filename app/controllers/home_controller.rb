class HomeController < ApplicationController
  def show
    render_component say_hello_to: params[:say_hello_to]
  end

  def clock
    render_component
  end

  def temperature_converter
    render_component
  end

  def bmi_calculator
    render_component
  end

  def todo_list
    render_component
  end
end
