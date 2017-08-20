require 'rails_helper'

RSpec.describe "allow" do
  it "allow message to return null" do
    double = double("some class")
    allow(double).to receive(:foo)

    expect(double.foo).to be_nil

  end

  it "allow message with return value" do
    double = double("some class");
    allow(double).to receive(:foo).and_return(5)

    expect(double.foo).to eq(5)
  end

  it "allow multiple messages " do
    double = double("some class")
    allow(double).to receive_messages(:foo=>3,:bar=>4)

    expect(double.foo).to eq(3)
    expect(double.bar).to eq(4)
  end
end