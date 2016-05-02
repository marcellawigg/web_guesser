require 'sinatra'
require 'sinatra/reloader'

set :port, 8888
NUMBER = rand(101)


get '/' do
  guess = params["guess"]
  response = check(guess)
  erb :index, :locals => {:number => NUMBER, :guess => guess, :response => response}
end


  def check(guess)
    guess = guess.to_i unless guess.nil?
    if guess.nil?
      "Make a guess"
    elsif guess > NUMBER
      guess > NUMBER + 5 ? "Way too high!" : "Too high!"
    elsif guess < NUMBER
      guess < NUMBER - 5 ? "Way too low!" : "Too low!"
    elsif guess == NUMBER
      "You got it right!"
    end
  end
