class SuperstarController < ApplicationController
	get '/' do
		{:message => 'all items soon'}.to_json
	end 	

	get '/fab' do
		# teach you how to rule the database
		# use activerecord 
		@christopher = Superstar.new
		@christopher.talent = 'Socialite'
		@christopher.name = 'Christopher McAwesome'
		@christopher.outfit = 'blue sweater'
		@christopher.save
		@christopher.to_json

		
		# crud
		# create
		# update
		# read
		# destroy



	end	

end 