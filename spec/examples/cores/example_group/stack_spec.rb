require 'rails_helper'
RSpec.describe "Using an array as stack" do

  def build_stack
    []
  end
  before(:example) do
      @stack = build_stack
  end

  it "is initaially empty" do
    expect(@stack).to be_empty
    expect(@stack.length).to eq 0
  end

  context  "after an item pushed to stack" do

    before(:example) do
      @stack = build_stack
      @stack.push(:item)
    end

    it "should pop the same element" do
      expect(@stack.pop).to eq(:item)
    end
  end

end

