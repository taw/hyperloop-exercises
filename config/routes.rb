Rails.application.routes.draw do
  mount ReactiveRecord::Engine => '/rr'
  get "/chat" => "chat#app" # This is broken

  get "/" => "home#index"
  get "/show" => "home#show"
  get "/clock" => "home#clock"
  get "/temperature_converter" => "home#temperature_converter"
  get "/bmi_calculator" => "home#bmi_calculator"
end
