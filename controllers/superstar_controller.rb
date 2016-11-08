class SuperstarController < ApplicationController
	get '/' do                       # in browser can go to localhost: 9292/api/superstar 
		#get all
		Superstar.all.to_json
	end 	


	# RESTful controller (REST API with RESTful routes)

	get '/:id' do
		# get by id
		@id = params[:id]            # in browser u can see by ids http://localhost:9292/api/superstars/2
		Superstar.find(@id).to_json
	end 	

	post '/' do
		# create
		@name = params[:name]
		@talent = params[:talent]
		@outfit = params[:outfit]

		@model = Superstar.new
		@model.name = @name
		@model.talent = @talent
		@model.outfit = @outfit
		@model.save

		# place a breakpoint in ruby!
		# binding.pry
		# ^ the code stops here
		@model.to_json
	end

	patch '/:id' do
		# update
		@id = params[:id]
		@name = params[:name]
		@talent = params[:talent]
		@outfit = params[:outfit]	
		@model = Superstar.find(@id)	
		@model.name = @name
		@model.talent = @talent
		@model.outfit = @outfit
		@model.save.to_json
	end

	delete '/:id' do
		# delete
		@id = params[:id]
		@model = Superstar.find(@id)
		@model.destroy
		{ :message => 'Item of id ' + @id + ' was removed.' }.to_json
	end  	


	# get '/fab' do
	# 	# teach you how to rule the database
	# 	# use activerecord 
	# 	@christopher = Superstar.new
	# 	@christopher.talent = 'Socialite'
	# 	@christopher.name = 'Christopher McAwesome'
	# 	@christopher.outfit = 'blue sweater'
	# 	@christopher.save
	# 	@christopher.to_json
		
	# 	# crud
	# 	# create
	# 	# update
	# 	# read
	# 	# destroy
	# end	

end 