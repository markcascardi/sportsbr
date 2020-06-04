require 'rack-flash'

class UsersController < ApplicationController


  get "/" do
    erb :'sessions/login'
  end
end
