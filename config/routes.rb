Rails.application.routes.draw do
  mount ReactiveRecord::Engine => '/rr'
  get "/chat" => "chat#app"

  get "/show" => "home#show"
  get "/clock" => "home#clock"
  get "/unit_converter" => "home#unit_converter"
end
