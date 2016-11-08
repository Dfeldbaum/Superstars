class ApplicationController < Sinatra::Base

	require	'bundler'
	Bundler.require

	set :views, File.dirname(__FILE__) + '/views'  #set views
	set :public_folder, File.dirname(__FILE__) + '/public' #set public folder
	
	# connect to our database
	# enabling sessions

	ActiveRecord::Base.establish_connection(
		:adapter => 'mysql2',
		:database => 'superstars'
	)

	enable :sessions, :logging

	not_found do
		{:message => "not found"}.to_json
	end 	

	get '/' do
		{:message => "home page"}.to_json
	end





	


end 	