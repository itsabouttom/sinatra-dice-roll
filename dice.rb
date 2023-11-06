require "sinatra"
require "sinatra/reloader"

get ("/") do
  erb(:elephant)
end

get ("/dice/2/6") do
  first_die  = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die

  @outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}"

  erb(:two_six)
end

get ("/dice/2/10") do
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die

  @outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}"

  erb(:two_ten)
end

get ("/dice/1/20") do
  first_die = rand(1..20)
  
  @outcome = "You rolled a #{first_die}"

  erb(:one_twenty)
end

get("/dice/5/4") do
  first_die = rand(1..4)
  second_die = rand(1..4)
  third_die = rand(1..4)
  fourth_die = rand(1..4)
  fifth_die = rand(1..4)
  sum = first_die + second_die + third_die + fourth_die + fifth_die

  @outcome = "You rolled a #{first_die}, and a #{second_die}, and a #{third_die}, and a #{fourth_die}, and a #{fifth_die} for a total of #{sum}"
  
  erb(:five_four)
end
