class UserNotesController < ApplicationController

# # create
post '/user_notes' do
  @user_note = UserNote.new(params[:user_note])
  @user_note.athlete_id = @athlete.id
  @user_note.user_id = current_user.id
  @user_note.save

  redirect to "/athletes/#{@athlete.id}"
end
#
# patch '/user_notes' do
#   @user_note = params[:note]
#
#   redirect to "/athletes/#{@athlete.id}"
end
