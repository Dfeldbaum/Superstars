require 'sinatra/base'

#controllers
require './controllers/application_controller'
require './controllers/superstar_controller'
# req fairy cont
# models
require './models/superstar'
#req fairy model


map('/') { run ApplicationController }
map ('/api/superstars') { run SuperstarController }
#map fairytales



# before/after filter (messaging for user)
before '/*' do
	puts 'Route Log:'
	puts request.host
	puts params
	puts request.path 
end

after '/*' do
	puts 'Completed Route Log:'
	puts response.body
	puts response.status
end 	
