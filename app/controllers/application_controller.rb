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
      User.find_by(id: session[:user_id])
    end

    # def current_user_athlete_note
    #   if UserNote.where(user_id: current_user.id, athlete_id: @athlete.id).first.to_s == nil
    #     "Add a note!"
    #   else
    #     UserNote.where(user_id: current_user.id, athlete_id: params[:user_note][:athlete_id]).first.to_s
    #   end
    # end
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
