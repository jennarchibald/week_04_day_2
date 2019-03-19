require('sinatra')
require('sinatra/contrib/all')

require_relative('./models/game')
also_reload('./models/*')

get '/' do
  erb(:welcome)
end

get '/how_to_play' do
  erb(:how_to_play)
end


get '/:player1/:player2' do
  game = Game.new(params[:player1], params[:player2])
  @result = game.play()
  @winner = game.winner()
  erb(:result)
end
