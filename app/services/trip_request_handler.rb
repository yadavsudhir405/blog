class TripRequestHandler

  attr_reader :trip
  
  def initialize( trip)
    @traveller = trip.fetch(:traveller, nil)
    @from = trip.fetch(:from, nil)
    @to = trip.fetch(:to, nil)
    @amount = trip.fetch(:amount, nil)
  end
  
  
  def new_trip
    @trip = Trip.new(:traveller=> @traveller, :from =>@from, :to => @to, :amount => @amount)
    @trip.save
  end

  def update_trip(id)
      trip = Trip.find(id)
      trip_hash={:traveller=> @traveller, :from => @from, :to => @to, :amount => @amount}
      trip.update(trip_hash)
  end
end