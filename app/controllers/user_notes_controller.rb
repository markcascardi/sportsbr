class UserNotesController < ApplicationController
  post '/user_notes' do
    @user_note = current_user.user_notes.where(athlete_id: params[:user_note][:athlete_id]).first
    if @user_note
      @user_note.update(params[:user_note])
    else
      @user_note = current_user.user_notes.build(params[:user_note])
    end
    # @user_note.user_id = current_user.id
    @user_note.save

    @athlete = Athlete.find(params[:user_note][:athlete_id])
    redirect to "/athletes/#{@athlete.id}"
  end
end
  # put '/user_notes' do
  #   binding.pry
  #   @user_note = UserNote.update(params[:user_note])
  #   @user_note.user_id = current_user.id
  #   @user_note.save
  #
  #   @athlete = Athlete.find(params[:user_note][:athlete_id])
  #   redirect to "/athletes/#{@athlete.id}"
  # end
  #

# def self.current_user_athlete_note
#   if UserNote.where(user_id: current_user.id, athlete_id: @athlete.id).first.to_s == nil
#     "Add a note!"
#   else
#     UserNote.where(user_id: current_user.id, athlete_id: params[:user_note][:athlete_id]).first.to_s
#   end
# end
#
# patch '/user_notes' do
#   @user_note = params[:note]
#
#   redirect to "/athletes/#{@athlete.id}"
