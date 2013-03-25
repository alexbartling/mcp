class WorkersController < ApplicationController
  def scrape_plates
  	@plate = Plate.where('updated_at < ?', (Time.now - 30.minutes)).order('updated_at DESC').last
  	if @plate
  		@plate.scrape
  	end
  end
end
