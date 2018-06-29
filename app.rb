require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1
    @player2 = $player2
    erb(:play)
  end

  get '/insulted' do
    @player1 = $player1
    @player2 = $player2
    @player1.insult(@player2)
    erb(:insulted)
  end

  run! if app_file == $PROGRAM_NAME
end
