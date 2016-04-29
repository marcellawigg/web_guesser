require 'sinatra'
require 'sinatra/reloader'

set :port, 8888
number ||= rand(101)


get '/' do
  guess = params["guess"]
  response = check(guess, number)
  erb :index, :locals => {:number => number, :guess => guess, :response => response}
end


  def check(guess, number)
    guess = guess.to_i unless guess.nil?
    if guess.nil?
      "Make a guess"
    elsif guess > number
      "Too high!"
    elsif guess < number
      "Too low!"
    elsif guess == number
      "You got it right!"
    end
  end
