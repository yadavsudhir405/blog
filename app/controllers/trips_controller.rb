class TripsController < ApplicationController

 def new

 end

  def create
    #puts "Creating testNew trip"
    #render plain: params[:trip].inspect
    @trip=Trip.new(params.require(:trip).permit(:from, :to,:amount))
    @trip.save
    redirect_to @trip

  end

 def show
   @trip = Trip.find(params[:id])
 end


  def index
    @trips=Trip.all
  end
end
