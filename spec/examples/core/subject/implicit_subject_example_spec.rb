require 'rails_helper'

class ArrayWithOneElement < Array
  def initialize(*)
    super()
    unshift "First element"
  end
end


RSpec.describe Array do

  context "new Created Array" do
      it  "should be empty" do
        expect(subject).to be_empty
      end
  end

  describe ArrayWithOneElement do
    context "with newly created ArrayWithOneElement" do
      it "should contain one element" do
        expect(subject).to include("First element")
      end
    end
  end
end
