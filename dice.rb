require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')


get("/") do
  "Hello World"
  erb(:elephant)
end

get("/giraffe") do
  "Hi"
end

get("/dice/2/6") do
  @rolls = []

  6.times do

    die = rand(1..6)

  @rolls.push(die)
 end
	
 erb(:two_six)
end

get("/dice/2/10") do
  @rolls = []

  2.times do

    die = rand(1..10)

  @rolls.push(die)
 end

  erb(:two_ten)
end

get("/dice/2/20") do
  @rolls = []

  2.times do

    die = rand(1..20)

  @rolls.push(die)
end

  erb(:two_twenty)
end

get("/dice/100/6") do
  @rolls = []

  100.times do

    die = rand(1..6)

    @rolls.push(die)
  end

  erb(:one_hundred_six)
end
