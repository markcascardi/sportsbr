use Rack::MethodOverride

class UsersController < ApplicationController

  get "/" do
    if logged_in?
      redirect to redirect to "/users/#{current_user.id}"
    else
      erb :'sessions/login'
    end
  end

  get "/users/:id" do
    @title = "User's Notes"
    @user_notes= UserNote.where(user_id: current_user.id)

    erb :'users/show'
  end
end
