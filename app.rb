require 'sinatra/base' 
require 'sinatra/reloader'
require './models/player'
require './models/game'

class RockPaperScissors < Sinatra::Base
  configure :development do # forgot this step
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/play' do
    p params
    $player1 = Player.new(params[:name])
    erb :play
  end

  post '/winner' do
    p params
    @player1_move = params[:Rock]
    p "Player 1's move is: " + @player1_move
    erb :winner
  end
  
  run! if app_file == $0
end
