class TicketsController < ApplicationController
  before_filter :signed_in_user

   attr_accessible :price
  def index

  end

  def show
  	@plate = Plate.find(params[:id])
  	@tickets = @plate.tickets
  end

  def new
    @ticket = Ticket.new(plate_id: params[:plate_id])
  end

  def create
    plate = Plate.find(params[:ticket]['plate_id'])
    @ticket = Ticket.create(params[:ticket])
    plate.tickets << @ticket
  	redirect_to current_user
  end


  def destroy  
  end
end
