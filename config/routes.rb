Rails.application.routes.draw do
  get 'lr8/input'
  get 'lr8/view'
  root 'lr8#input'
end
