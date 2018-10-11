Rails.application.routes.draw do
  resources :switches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/button', to: 'switches#button`, as: 'button`
  get '/toggle' => "switches#toggle", as: 'toggle'

end
