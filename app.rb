require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to Rock-Paper-Scissors!</h1>
  <p><a href='/rock'>Play Rock</a></p>
  <p><a href='/paper'>Play Paper</a></p>
  <p><a href='/scissors'>Play Scissors</a></p>
  "
end

get("/rock") do
  moves = ["rock", "paper", "scissors"]

  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "tied"
  elsif @comp_move == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
  end

 erb(:zebra)
end

get("/paper") do
  moves = ["rock", "paper", "scissors"]

  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "won"
  elsif @comp_move == "paper"
    @outcome = "tied"
  else
    @outcome = "lost"
  end

 erb(:zbp)
end

get("/scissors") do
  moves = ["rock", "paper", "scissors"]

  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "lost"
  elsif @comp_move == "paper"
    @outcome = "won"
  else
    @outcome = "tied"
  end

 erb(:zbs)
end
