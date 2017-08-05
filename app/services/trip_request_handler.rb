class TripRequestHandler

  attr_reader :trip
  
  def initialize( traveller,from,to,amount)
    @traveller = traveller
    @from = from
    @to = to
    @amount = amount
  end
  
  
  def process
    @trip = Trip.new(:from =>@from, :to => @to, :amount => @amount)
    @trip.save
  end
end