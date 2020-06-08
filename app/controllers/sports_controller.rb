class SportsController < ApplicationController

  get '/sports' do
    @title = "All Sports"
    @sports = Sport.all

    erb :'/sports/index'
  end

  get '/sports/:id' do
    @sport = Sport.find_by(id: params[:id])

    erb :'/sports/show'
  end
end
