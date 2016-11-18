Rails.application.routes.draw do
  get '/students' => "student#show"

  root to: 'class#show'

  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
