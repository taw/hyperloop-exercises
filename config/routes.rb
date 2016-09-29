Rails.application.routes.draw do
  mount ReactiveRecord::Engine => '/rr'
  get "/chat" => "chat#app" # This is broken

  get "/" => "home#index"
  get "/show" => "home#show"
  get "/clock" => "home#clock"
  get "/temperature_converter" => "units#temperature_converter"
  get "/bmi_calculator" => "units#bmi_calculator"
  get "/todo_list" => "todo#todo_list"

  get "/hoi4/fleet_designer" => "hoi4#fleet_designer"
end
