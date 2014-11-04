class UsersController < ApplicationController
  # GET /users/new
  get '/new' do
    # render form for creation of new user
    erb :'users/new'
  end

ROOT_PATH = Dir.pwd
Dir[ROOT_PATH+"/models/*.rb"].each{ |file| require file }
  # POST '/users'
  post '/' do
    
    user = User.new(params[:user])
    user.password = params[:password]
    user.save!

    redirect '/'
 end
end