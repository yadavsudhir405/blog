class TripsController < ApplicationController


  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
  end

 def new
  @trip = Trip.new
 end
  
  def edit
    @trip = Trip.find(params[:id])
  end
  
  def create

    trip_request_handler = TripRequestHandler.new(trips_params)

    if trip_request_handler.new_trip
      @trip = trip_request_handler.trip
      redirect_to @trip
    else
      @trip = trip_request_handler.trip
      p @trip.errors.any?
      render 'new'
    end
  end

  def update
    id = params[:id]
    trip_request_handler= TripRequestHandler.new(trips_params)
    trip_request_handler.update_trip(id)
    redirect_to trips_path

  end

  def delete
    @trip =Trip.find(:id)
    @trip.destroy
    redirect_to trips_path
  end

  private
    def trips_params
      params.require(:trip).permit(['traveller', 'from', 'to', 'amount'])

    end

end
