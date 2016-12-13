require 'sinatra'
require 'sinatra/reloader'
compliments = [
  "Your instructors love you",
  "High five = ^5",
  "Is it Ruby Tuesday yet?",
  "It's almost beer o'clock",
  "The Force is strong with you"
]

colors = ["#FFBF00", "#0080FF","#01DF3A","#FF0080"]

get '/' do
@color = colors.sample
erb :layout
return "Welcome to the best compliments in the world. Heres your first..
#{compliments[rand(compliments.length)]}"
end

get ("/:name") do
  @greeting = 'hi #{params[:name]}'
  @compliment = compliments.sample
  @color = colors.sample
  erb :compliment
end
