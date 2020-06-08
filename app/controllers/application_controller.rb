use Rack::MethodOverride
require './config/environment'
require 'rack-flash'

class ApplicationController < Sinatra::Base
  enable :sessions
  use Rack::Flash

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    set :session_secret, "secret"
  end

  helpers do
    def logged_in?
      !!session[:user_id]
    end

    def current_user
      User.find_by(id: session[:user_id])
    end
  end

  delete '/user_notes/:id' do
    @user_note = UserNote.delete(params[:id])

    flash[:notice] = "Note deleted."
    redirect to "/users/#{current_user.id}"
  end
end
