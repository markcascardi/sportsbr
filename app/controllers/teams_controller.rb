class TeamsController < ApplicationController

  get '/teams' do
    @title = "All Teams"
    @teams = Team.all

    erb :'/teams/index'
  end

  get '/teams/new' do
    erb :'/teams/new'
  end

  get '/teams/current' do
    @title = "This Year's Team's"
    sports = Sport.all
    @teams = sports.map { |sport| sport.teams.last }


    # @teams = Team.where(season: Season.where(name: "2019-2020"))

    erb :'/teams/index'
  end

  post '/teams' do
    @team = Team.new(params[:team])
    @team.save

    flash[:message] = "Team successfully created."
    redirect "/teams/#{@team.id}"
  end

  get '/teams/:id' do
    @team = Team.find_by(id: params[:id])

    erb :'/teams/show'
  end

  get '/teams/:id/edit' do
    @title = "Edit Team"
    @team = Team.find_by(id: params[:id])

    erb :'/teams/edit'
  end

  patch '/teams/:id' do
    @team = Team.find_by(id: params[:id])
    @team.update(params[:team])
    @team.save

    flash[:message] = "Successfully updated team."
    redirect "/teams/#{@team.id}"
  end
end
