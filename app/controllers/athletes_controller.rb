use Rack::MethodOverride

class AthletesController < ApplicationController

  get '/athletes' do
    @title = "All Athletes"
    @athletes = Athlete.all
    @athletes = @athletes.where(team_id: params[:team_id]) if params[:team_id]
    if params[:current] == "true"
      sports = Sport.all
      team_ids = sports.map { |sport| sport.teams.last.id } #will need to add current column for teams
      @athletes = @athletes.where(team_id: team_ids)
    end

    erb :'/athletes/index'
  end

  get '/athletes/new' do
    @title = "Create a New Athlete"
    erb :'/athletes/new'
  end

  post '/athletes' do
    @athlete = Athlete.new(params[:athlete])
    @athlete.save

    flash[:notice] = "Athlete successfully created."
    redirect "/athletes/#{@athlete.id}"
  end

  get '/athletes/:id' do
    @athlete = Athlete.find_by(id: params[:id])
    @user_note = UserNote.where(user_id: current_user&.id, athlete_id: @athlete.id).first || UserNote.new

    erb :'/athletes/show'
  end

  get '/athletes/:id/edit' do
    @athlete = Athlete.find_by(id: params[:id])

    erb :'/athletes/edit'
  end

  patch '/athletes/:id' do
    @athlete = Athlete.find_by(id: params[:id])
    @athlete.update(params[:athlete])
    # @athlete.artist = Artist.find_or_create_by(name: params[:artist][:name])
    # @athlete.genre_ids = params[:genres]
    @athlete.save

    flash[:notice] = "Successfully updated athlete."
    redirect "/athletes/#{@athlete.id}"
  end
end
