require 'rack-flash'

class SessionsController < ApplicationController

  get "/login" do
    erb :'sessions/login'
  end

  post "/login" do
    @user = User.find_by(email: params[:email])
  	if @user && @user.authenticate(params[:password])
    	session[:user_id] = @user.id

			redirect to "/teams"
		else
      # flash[:message] = "Log in failed"
			redirect "/login"
		end
  end

  get "/signup" do
    erb :'sessions/signup'
  end

  post "/signup" do
    @user = User.create(name: params[:name], email: params[:email], password: params[:password])
    session[:user_id] = @user.id

    # flash[:message] = "Welcome to Sports <br>"
    redirect to "/login"
  end
end
