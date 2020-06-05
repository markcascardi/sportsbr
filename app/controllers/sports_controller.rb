require 'rack-flash'

class SportsController < ApplicationController

  get '/sports' do
    @sports = Sport.all

    erb :'/sports/index'
  end
end
