require "rails_helper"

RSpec.describe "random test"  do

  describe "random describe1" do
    before(:context) do
      p "Ran before starting   context1"
    end
    after(:context) do
      p "Ran ater context"
    end
    before(:example) do
      p "Run before each context1-example"
    end
    context "context1" do

      it "run example1" do
        p "example1"
      end

      it "run example1" do
        p "example2"
      end
    end


  end
end

