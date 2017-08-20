require 'rails_helper'

RSpec.describe "set user-defined meta data to example group", :foo=> 17 do

  it "should have access to the foo value" do |example|
    expect(example.metadata[:foo]).to eq 17
  end
  it "should not have acccess the metadata defined in another group " do |example|
    expect(example.metadata).not_to include(:bar)
  end

  describe "should have access to both foo and bar", :bar =>20 do
    it "should have access to both foo and bar" do |example|
      expect(example.metadata.keys).to include(:foo,:bar)

      expect(example.metadata).to have_key(:foo)
      expect(example.metadata).to have_key(:bar)
    end

  end
end