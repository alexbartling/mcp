class Ticket < ActiveRecord::Base
	validates :citation_number, uniqueness: true


	belongs_to :plate
end
