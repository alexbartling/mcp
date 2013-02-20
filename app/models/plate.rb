class Plate < ActiveRecord::Base

	


	has_many :usersplates
  	has_many :users, :through => :usersplates
	has_many :tickets
end
