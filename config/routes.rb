Rails.application.routes.draw do
  root 'welcome#index'

  resources :courses
  resources :students do
    collection do
      get :student_ative
    end
  end
end
