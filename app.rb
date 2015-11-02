require 'sinatra/base'
require_relative './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
   erb :index 
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect :play
  end
  
  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/move' do
    session[:move] = params[:move]
    redirect :duel
  end

  get '/duel' do
    game = Game.new
    @player1_move = session[:move]
    @player2_move = game.computer_move
    @result = game.winner @player1_move, @player2_move 
    erb :duel
  end
end
