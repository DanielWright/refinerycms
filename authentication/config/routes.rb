::Refinery::Application.routes.draw do

  # Add Devise necessary routes.
  # For Devise routes, see: https://github.com/plataformatec/devise
  scope(:module => 'refinery') do
    devise_for :'refinery/users', :class_name => "::Refinery::User", :module => 'refinery', :controllers => {
      :registrations => 'refinery/users'
    },
    :skip => [:registrations],
    :path_names => {
      :sign_out => 'logout',
      :sign_in => 'login',
      :sign_up => 'register'
    } do
      get '/refinery/users/register' => 'users#new', :as => :new_refinery_user_registration
      post '/refinery/users/register' => 'users#create', :as => :refinery_user_registration
    end if ::Refinery::User.respond_to?(:devise)

    scope(:module => 'admin', :path => 'refinery') do
      # Override Devise's default after login redirection route.
      # This will push a logged in user to the dashboard.
      get '/', :to => 'dashboard#index', :as => :refinery_root

      scope(:as => 'refinery_admin') do
        resources :users, :except => :show
      end
    end
  end

  # Override Devise's other routes for convenience methods.
  #get 'refinery/login', :to => "sessions#new", :as => :new_user_session
  #get 'refinery/login', :to => "sessions#new", :as => :refinery_login
  #get 'refinery/logout', :to => "sessions#destroy", :as => :destroy_user_session
  #get 'refinery/logout', :to => "sessions#destroy", :as => :logout

end
