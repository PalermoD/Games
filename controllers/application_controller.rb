class ApplicationController < Sinatra::Base
	helpers Sinatra::AuthenticationHelper

  ActiveRecord::Base.establish_connection({
	adapter: 'postgresql',
	database: 'game_db'
	})

  set :views, File.expand_path("../../views", __FILE__)
  set :public_folder, File.expand_path('../../public', __FILE__)
  
  get '/' do
   erb :index 
  end
end 