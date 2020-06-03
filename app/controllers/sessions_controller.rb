class SessionsController < ApplicationController

  get "/" do
    erb :'users/welcome'
  end

  post "/login" do
    @user = User.find_by(email: params[:email])
  	if @user && @user.authenticate(params[:password])
    	session[:user_id] = user.id

			redirect to "/teams"
		else
      flash[:message] = "Log in failed"
			redirect "/login"
		end
  end

  get "/signup" do
    erb :'sessions/signup'
  end

  post "/signup" do
    @user = User.create(name: params[:name], email: params[:email], password: params[:password])
    session[:user_id] = @user.id

    redirect to "/teams/index"
  end
end
