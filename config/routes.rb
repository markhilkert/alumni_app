Rails.application.routes.draw do

  namespace :api do
    get "/profiles" => 'profiles#index'
    get "/profiles/:id" => 'profiles#show'
    get '/profiles/new' => 'profiles#new'
    post "/profiles" => 'profiles#create'
    patch "/profiles/:id" => 'profiles#update'
    delete "/profiles/:id" => 'profiles#destroy'

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
  end

end
