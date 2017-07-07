class TripsController < ApplicationController

 def new

 end

  def create
    puts "Creating new trip"
    @trip=Trip.new(params.require(:trip).permit(:from, :to,:amount))
    @trip.save
    redirect_to @trip
  end
end
