class TripsController < ApplicationController

 def new
  
 end
  
  def create
    trip_request_handler = TripRequestHandler.new(params[:trip][:traveller], params[:trip][:from],
                           params[:trip][:to],500.00)

    if trip_request_handler.process
      @trip = trip_request_handler.trip
      redirect_to @trip
    else
      render 'new'
    end
  end

 def show
   @trip = Trip.find(params[:id])
 end
  
  def trips_params
   params.require[:trip].permit([:traveller, :from, :to])
  end

end
