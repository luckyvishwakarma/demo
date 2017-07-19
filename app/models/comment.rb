class Comment < Flexirest::Base			
  #base_url Rails.application.config.api_server_url
  Flexirest::Base.base_url = "http://localhost:3001/api/v1"

  get :all, "/comments", requires: [:id]
  get :find, "/comments/:id" 
 
end