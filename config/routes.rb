Rails.application.routes.draw do
  root "event_dates#index"
  resources :event_dates

  get "/travel_iteneraries", to: "travel_itneraries#index"
  get "/travel_iteneraries/:id", to: "travel_iteneraries#show"
end
