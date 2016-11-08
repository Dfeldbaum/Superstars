class Superstar < ActiveRecord::Base #inherit from ActiveRecord, taking methods from ActiveRecord
	self.table_name = 'superstars'
end