Rails.application.routes.draw do
  get 'students/index'

  post 'students/create'

  get 'students/edit'

  delete 'students/delete'

  get 'students/show'

  get 'pipeline_stage/index'

  post 'pipeline_stage/create'

  delete 'pipeline_stage/delete'

  get 'pipeline_stage/edit'

  get 'lead_group/index'

  post 'lead_group/create'

  get 'lead_group/edit'

  delete 'lead_group/delete'

  get 'lead_source/index'

  post 'lead_source/create'

  get 'lead_source/edit'

  delete 'lead_source/delete'

  get 'resources/index'

  get 'resources/create'

  get 'home/index'
  get '/' => 'home#index'
  get '/resources' => 'resources#index'
  get '/students' => 'students#index'


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
