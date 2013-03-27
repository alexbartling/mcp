  class PlatesController < ApplicationController
 before_filter :signed_in_user

  def index
    @plates = current_user.plates
  end

  def new
    @plate = Plate.new
  end

  def create
    #First, check if this plate already exists.
    plate = Plate.where('license = ?', params[:plate][:license]).first
    if plate 
       if !current_user.plates.exists?(:id => plate.id)
          current_user.plates << plate
       end
    else
      new_plate = current_user.plates.create(params[:plate]) 
      new_plate.scrape
    end
    redirect_to current_user
  end

  def scraper
    plate = Plate.find(params[:plate_id])
    plate.scrape
    
    redirect_to current_user 
  end
 
  def destroy
    Plate.find(params[:id]).destroy
    flash[:success] = "Plate destroyed"
    redirect_to current_user
  end
end
