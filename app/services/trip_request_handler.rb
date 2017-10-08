class TripRequestHandler

  attr_reader :trip
  
  def initialize( trip)
    @traveller = trip.fetch(:traveller, nil)
    @from = trip.fetch(:from, nil)
    @to = trip.fetch(:to, nil)
    @amount = trip.fetch(:amount, nil)
  end
  
  
  def new_trip1
    @trip = Trip.new(:traveller=> @traveller, :from =>@from, :to => @to, :amount => @amount)
    @trip.save
  end

  def update_trip1(id)
      trip = Trip.find(id)
      trip1_hash={:traveller=> @traveller, :from => @from, :to => @to, :amount => @amount}
      trip.update(trip1_hash)
  end
end



