Rails.application.routes.draw do
  get 'events/index'
  root controller: :events, action: :index
end
