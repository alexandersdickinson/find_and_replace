require('sinatra')
require('sinatra/reloader')
require('./lib/find_and_replace')
also_reload('lib/**/*.rb')

get('/') do
  @header = 'Find and Replace'
  erb(:form)
end

get('/output') do
  @header = 'Your Result'
  @sentence = params.fetch('sentence').find_and_replace(params.fetch('find'), params.fetch('replace'))
  erb(:output)
end