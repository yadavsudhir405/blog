class TripsController < ApplicationController


  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
  end

 def new
  
 end
  
  def edit
    @trip = Trip.find(params[:id])
  end
  
  def create
    trip_request_handler = TripRequestHandler.new(params[:trip][:traveller], params[:trip][:from],
                           params[:trip][:to],500.00)

    if trip_request_handler.new_trip
      @trip = trip_request_handler.trip
      redirect_to @trip
    else
      render 'new'
    end
  end

  def update
    id = params[:id]
    p "*****#{id}"
    trip_request_handler= TripRequestHandler.new(params[:trip][:traveller], params[:trip][:from],
        params[:trip][:to],500.00)
    trip_request_handler.update_trip(id)
    redirect_to trips_path

  end

  def delete
    @trip =Trip.find(:id)
    @trip.destroy
    redirect_to trips_path
  end
  def trips_params
   params.require[:trip].permit([:traveller, :from, :to])
  end

end
