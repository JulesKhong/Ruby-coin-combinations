require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/coin_combinations')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @input = params.fetch('input')
  @results = @input.to_f().change()
  erb(:results)
end
