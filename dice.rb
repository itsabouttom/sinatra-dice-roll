require "sinatra"
require "sinatra/reloader"

get ("/") do
  "Hello, world!"
end

get ("/dice/2/6") do
  first_die  = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die

  outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}"
