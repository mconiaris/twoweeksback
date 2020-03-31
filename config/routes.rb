Rails.application.routes.draw do

  root 'welcome#index'

  get 'index', to: 'welcome#index'
	get 'about', to: 'welcome#about'

	get '*path', to: 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
