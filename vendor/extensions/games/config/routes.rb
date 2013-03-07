Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :games do
    resources :games, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :games, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :games, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
