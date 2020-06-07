require './config/environment'
require 'rack-flash'

class ApplicationController < Sinatra::Base
  use Rack::Flash

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  helpers do
    def logged_in?
      !!session[:user_id]
    end

    def current_user
      User.find(session[:user_id])
    end

    # post '/user_notes' do
    #   @user_note = params[:user_note]
    #   binding.pry
    #
    #   # @user_note.athlete_id = @athlete.id
    #   @user_note.user_id = current_user.id
    #   @user_note.save
    #
    #
    #   redirect to "/athletes/#{@athlete.id}"
    # end
  end
end
