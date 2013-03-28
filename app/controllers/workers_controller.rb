class WorkersController < ApplicationController
  def scrape_plates
  	@plate = Plate.where('updated_at < ?', (Time.now - 30.minutes)).order('updated_at DESC').last
  	if @plate
  		@plate.scrape
  		@plate.tickets.each do |ticket|
  			if (ticket.paid == false && ticket.date <= (ticket.date - 9.days) && ticket.price_increase == false)
  				TicketMailer.ticket_increase(ticket).deliver
  				ticket.price_increase = 1
  				ticket.save
  			end
  		end
  	end
  end
end
