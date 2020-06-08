use Rack::MethodOverride

class UserNotesController < ApplicationController

  post '/user_notes' do
    @user_note = current_user.user_notes.where(athlete_id: params[:user_note][:athlete_id]).first
    if @user_note
      @user_note.update(params[:user_note])
      flash[:notice] = "Note updated!"
    else
      @user_note = current_user.user_notes.build(params[:user_note])
      flash[:notice] = "Note created!"
    end
    @user_note.save

    @athlete = Athlete.find(params[:user_note][:athlete_id])
    redirect to "/athletes/#{@athlete.id}"
  end
end
  
