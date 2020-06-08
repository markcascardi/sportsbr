use Rack::MethodOverride

class SessionsController < ApplicationController

  get "/login" do
    erb :'sessions/login'
  end

  post "/login" do
    @user = User.find_by(email: params[:email])
  	if @user && @user.authenticate(params[:password])
    	session[:user_id] = @user.id

      flash[:notice] = "You are logged in!"
			redirect to "/users/#{current_user.id}"
		else
      flash[:notice] = "Log in failed"
			redirect to "/login"
		end
  end

  get "/signup" do
    erb :'sessions/signup'
  end

  post "/signup" do
    @user = User.new(name: params[:name], email: params[:email], password: params[:password])
    session[:user_id] = @user.id
    @user.save

    if @user.save
      flash[:notice] = "Welcome!"
      redirect to "/login"
    else
      flash[:notice] = "Sign up falied"
      redirect to "/signup"
    end
  end

  get '/logout' do
    session[:user_id] =nil

    flash[:notice] = "You have been logged out."
    redirect to '/login'
  end
end
