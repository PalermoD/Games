class SessionsController < ApplicationController
  # GET '/sessions/new'
  get '/new' do
    erb :'/'
  end
  # POST '/sessions'
  post '/' do
    redirect '/' unless user = User.find_by(username: params[:username])
    if user.password == params[:password]
      session[:current_user] = user.id
      redirect '/blog'
    else
      redirect '/'
    end
  end
  # DELETE '/sessions'
  delete '/' do
    session[:current_user] = nil
    redirect '/'
  end
end