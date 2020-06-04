require 'rack-flash'

class TeamsController < ApplicationController

  get '/teams' do
    @teams = Team.all

    erb :'/teams/index'
  end

  get '/teams/new' do
    erb :'/teams/new'
  end

  post '/teams' do
    @team = Team.new(params[:team])
    @team.sport_id = Sport.find_or_create_by(id: params[:sport][:id])
    @team.season_id = params[:season][:id]
    @team.save
    binding.pry
    # flash[:message] = "Team successfully created."
    redirect "/teams/#{@team.id}"
  end

  get '/teams/:id' do
    @team = Team.find_by(id: params[:id])

    erb :'/teams/show'
  end

  get '/teams/:id/edit' do
    @team = Team.find_by(id: params[:id])

    erb :'/teams/edit'
  end

  patch '/teams/:id' do
    @team = Team.find_by(id: params[:id])
    @team.update(params[:team])
    # @team.artist = Artist.find_or_create_by(name: params[:artist][:name])
    # @team.genre_ids = params[:genres]
    @team.save

    # flash[:message] = "Successfully updated team."
    redirect "/teams/#{@team.id}"
  end
end
