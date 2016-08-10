require 'sinatra'
require 'sinatra/reloader'

number = rand(101)

get '/' do
  if params['guess'].to_i > number
    message = 'Too high!'
  elsif params['guess'].to_i < number
    message = 'To low!'
  else
    message = 'You got it right!'
  end
  erb :index, :locals => {:number => number, :message => message}

end
