class Plate < ActiveRecord::Base
	validates :license, :uniqueness => true

	has_many :usersplates
  	has_many :users, :through => :usersplates
	has_many :tickets
end
