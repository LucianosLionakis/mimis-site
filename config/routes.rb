Rails.application.routes.draw do
  get 'menu/index'

  root 'menu#index'
end
