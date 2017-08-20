require 'rails_helper'

RSpec.describe "only specified method is redefine" do
  let(:name) {"hello"}
  before(:example) do
    allow(name).to receive(:length).and_return(100)
  end
  it "should call the redifine length method, other method should not redefine" do

    expect(name.length).to eq(100)
    expect(name.reverse).to eq("olleh")
  end
end

RSpec.describe "should restored the method as original across the  examples" do
  let(:name) {"hello"}
   it "redefine the length method to return differnet length " do
     allow(name).to receive(:length).and_return(500)
     expect(name.length).to eq(500)
   end
   it "should return its original length" do
     expect(name.length).to eq(5)
   end
end