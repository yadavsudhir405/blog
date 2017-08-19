require 'rails_helper'

RSpec.shared_examples "some example" do |parameter|
  let(:parameter) {parameter}

  it "uses the given parameter" do
    expect(parameter).to eq parameter
  end
end


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

  include_examples "some example","parameter1"
  include_examples "some example","parameter2"
end

