require 'sinatra'
require 'sinatra/reloader'

set :port, 8888
number = rand(101)

get '/' do
  erb :index, :locals => {:number => number}
end
