require 'sinatra'
require 'sinatra/reloader'

number = rand(101)

get '/' do
  if params['guess'].to_i > number
    message = 'Too high!'
  end
  erb :index, :locals => {:number => number, :message => message}

end
