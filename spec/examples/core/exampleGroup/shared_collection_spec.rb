require 'rails_helper'
require 'set'

RSpec.describe Array do
  include_examples "a collection", Array
  it "should be Array class"  do
    expect(described_class).to eq(Array)
  end
end

RSpec.describe Set do
  include_examples "a collection", Set
  it "should be Set"  do
    expect(described_class).to eq(Set)
  end
end

RSpec.shared_examples "collection" do
   let(:collection) {described_class.new([7, 8, 9])}

  context "initialized with three items" do
    it "should say it's size to 3" do
      expect(collection.size).to eq(3)
    end
  end

  describe "#include?" do
    context "with an element already in the collection" do
      it "should return true" do
        expect(collection.include?(7)).to be_truthy
      end
    end

    context "with an element not there in  collection" do
      it "should return false" do
        expect(collection.include?(10)).to be_falsey
      end
    end
  end
end

RSpec.describe Array do
  it_behaves_like "collection"
end

RSpec.describe Set do
    it_behaves_like "collection"
end
