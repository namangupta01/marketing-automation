Rails.application.routes.draw do
  get 'drip/index'

  post 'drip/create'

  delete 'drip/delete'

  get 'drip/show'

  get 'campaign/index'

  post 'campaign/create'

  delete 'campaign/delete'

  get 'campaign/edit'

  get 'campaign/show'

  get 'sms_template/index'

  post 'sms_template/create'

  get 'sms_template/edit'

  get 'sms_template/show'

  delete 'sms_template/delete'

  get 'email_template/index'

  get 'email_template/show'

  get 'email_template/edit'

  delete 'email_template/delete'

  post 'email_template/create'

  post 'batch/create'

  get 'batch/index'

  get 'batch/edit'

  delete 'batch/delete'

  get 'batch/show'

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

  get '/email_templates' => 'email_template#index'

  get 'sms_templates' => 'sms_template#index'

  get '/campaigns' => 'campaign#index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
