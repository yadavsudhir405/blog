require "rails_helper"

RSpec.describe "random test"  do

  before(:example) do
    p "1"
  end
  it "should run first" do
    p "Ran first"
  end
  context "inner context" do
    before(:example) do
      p "2"
    end
    it "run inner-context example" do
      p "Ran inner-context example"
    end
  end


end

