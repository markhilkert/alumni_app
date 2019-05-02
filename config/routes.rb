Rails.application.routes.draw do

  namespace :api do
    post "/sessions" => 'sessions#create'

    get "/users" => 'users#index'
    get "/users/:id" => 'users#show'
    get '/users/new' => 'users#new'
    post "/users" => 'users#create'
    patch "/users/:id" => 'users#update'
    delete "/users/:id" => 'users#destroy'

    get "/skills" => 'skills#index'
    get "/skills/:id" => 'skills#show'
    get '/skills/new' => 'skills#new'
    post "/skills" => 'skills#create'
    patch "/skills/:id" => 'skills#update'
    delete "/skills/:id" => 'skills#destroy'

    get "/projects" => 'projects#index'
    get "/projects/:id" => 'projects#show'
    get '/projects/new' => 'projects#new'
    post "/projects" => 'projects#create'
    patch "/projects/:id" => 'projects#update'
    delete "/projects/:id" => 'projects#destroy'

    get "/jobs" => 'jobs#index'
    get "/jobs/:id" => 'jobs#show'
    get '/jobs/new' => 'jobs#new'
    post "/jobs" => 'jobs#create'
    patch "/jobs/:id" => 'jobs#update'
    delete "/jobs/:id" => 'jobs#destroy'

    get "/resources" => 'resources#index'
    get "/resources/:id" => 'resources#show'
    get '/resources/new' => 'resources#new'
    post "/resources" => 'resources#create'
    patch "/resources/:id" => 'resources#update'
    delete "/resources/:id" => 'resources#destroy'

    get "/locations" => 'locations#index'
    get "/locations/:id" => 'locations#show'
    get '/locations/new' => 'locations#new'
    post "/locations" => 'locations#create'
    patch "/locations/:id" => 'locations#update'
    delete "/locations/:id" => 'locations#destroy'

    get "/educations" => 'educations#index'
    get "/educations/:id" => 'educations#show'
    get '/educations/new' => 'educations#new'
    post "/educations" => 'educations#create'
    patch "/educations/:id" => 'educations#update'
    delete "/educations/:id" => 'educations#destroy'

    get "/companies" => 'companies#index'
    get "/companies/:id" => 'companies#show'
    get '/companies/new' => 'companies#new'
    post "/companies" => 'companies#create'
    patch "/companies/:id" => 'companies#update'
    delete "/companies/:id" => 'companies#destroy'

    get "/user_skills" => 'user_skills#index'
    get "/user_skills/:id" => 'user_skills#show'
    get '/user_skills/new' => 'user_skills#new'
    post "/user_skills" => 'user_skills#create'
    patch "/user_skills/:id" => 'user_skills#update'
    delete "/user_skills/:id" => 'user_skills#destroy'

    get "/user_projects" => 'user_projects#index'
    get "/user_projects/:id" => 'user_projects#show'
    get '/user_projects/new' => 'user_projects#new'
    post "/user_projects" => 'user_projects#create'
    patch "/user_projects/:id" => 'user_projects#update'
    delete "/user_projects/:id" => 'user_projects#destroy'

    get "/user_jobs" => 'user_jobs#index'
    get "/user_jobs/:id" => 'user_jobs#show'
    get '/user_jobs/new' => 'user_jobs#new'
    post "/user_jobs" => 'user_jobs#create'
    patch "/user_jobs/:id" => 'user_jobs#update'
    delete "/user_jobs/:id" => 'user_jobs#destroy'

    get "/user_educations" => 'user_educations#index'
    get "/user_educations/:id" => 'user_educations#show'
    get '/user_educations/new' => 'user_educations#new'
    post "/user_educations" => 'user_educations#create'
    patch "/user_educations/:id" => 'user_educations#update'
    delete "/user_educations/:id" => 'user_educations#destroy'
  end

end
