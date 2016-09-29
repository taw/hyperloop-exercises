Rails.application.routes.draw do
  mount ReactiveRecord::Engine => '/rr'
  get "/chat" => "chat#app" # This is broken

  get "/" => "home#index"
  get "/show" => "home#show"
  get "/clock" => "home#clock"
  get "/unit_converter" => "home#unit_converter"
end
