require 'sinatra'
require 'sinatra/reloader'

set :port, 8888

get '/' do
"The secret number is #{rand(101)}."
end
