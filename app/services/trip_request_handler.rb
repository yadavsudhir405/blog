class TripRequestHandler

  attr_reader :trip
  
  def initialize( traveller,from, to, amount)
    @traveller = traveller
    @from = from
    @to = to
    @amount = amount
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