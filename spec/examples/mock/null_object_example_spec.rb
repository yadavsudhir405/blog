require 'rails_helper'

RSpec.describe "double null object" do
  it "should return the same object" do
    double = double("some class").as_null_object

    expect(double.foo.bar).to be double
  end

  it "should call the defined messages" do
    double = double("some class").as_null_object
    allow(double).to receive_messages(:foo =>3,:bar=>4)

    expect(double.foo).to eq 3
    expect(double.bar).to eq 4
  end
end