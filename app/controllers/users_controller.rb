class UsersController < ApplicationController


  get "/" do
    erb :'users/welcome'
  end

  post "/users/login" do
    @user = User.find_by(email: params[:email])
  	if @user && @user.authenticate(params[:password])
    	session[:user_id] = user.id

			redirect to "/teams/index"
		else
      flash[:message] = "Log in failed"
			redirect "/users/login"
		end
  end

  get "/users/signup" do
    erb :'users/signup'
  end

  post "/users/signup" do
    @user = User.create(name: params[:name], email: params[:email], password: params[:password])
    session[:user_id] = @user.id

    redirect to "/teams/index"
  end
end
