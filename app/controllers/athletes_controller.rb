class AthletesController < ApplicationController

  get '/athletes' do
    @athletes = Athlete.all

    erb :'/athletes/index'
  end

  get '/athletes/new' do
    erb :'/athletes/new'
  end

  post 'athletes/' do
    @athlete = Athlete.new(params[:athlete])
    # @athlete.artist = Artist.find_or_create_by(name: params[:artist][:name])
    # @athlete.genre_ids = params[:genres]
    @athlete.save

    flash[:message] = "Athlete successfully created."
    redirect "/athletes/#{@athlete.id}"
  end

  get '/athletes/:id' do
    @athlete = Athlete.find_by(id: params[:id])

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

    flash[:message] = "Successfully updated athlete."
    redirect "/athletes/#{@athlete.id}"
  end
end
