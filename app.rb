require('sinatra')
require('sinatra/reloader')
require('./lib/rock')
also_reload('./lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/game') do
  @player1 = params.fetch('player1')
  @player2= params.fetch('player2')
  @output = @player1.beats?(@player2)
  erb(:index)

end
