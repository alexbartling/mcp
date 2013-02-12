class PlatesController < ApplicationController
 before_filter :signed_in_user

  def index
    @plates = current_user.plates
  end

  def new
    @plate = Plate.new
  end

  def create
    @plate = Plate.create(params[:plate])
    current_user.plates << @plate
    redirect_to current_user
    
  end
 
  def show

  end

  def edit

  end

  def update
  end

  def destroy
    Plate.find(params[:id]).destroy
    flash[:success] = "User destroyed"
    redirect_to current_user
  end
end
