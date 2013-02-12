class Usersplate < ActiveRecord::Base
	belongs_to :plate
	belongs_to :user
end
