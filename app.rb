require('sinatra')
require('sinatra/reloader')

get('/') do
  @friend = "jessica"
  erb(:letter)
end


get('/greeting_form') do
  erb(:form)
end

get('/greeting_card') do
  @sender = params.fetch('sender')
  @recipient = params.fetch('recipient')
  erb(:greeting_card)
end
