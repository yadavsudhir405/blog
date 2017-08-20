require "rails_helper"

RSpec.describe Array do

  it "expect the Array class after being described_class being called" do
    expect(described_class).to eq(Array)
  end
end

RSpec.describe "string class test" do

  it "should return String class" do
    expect(described_class).not_to be(String)
  end

end

RSpec.describe "described class test" do
  describe Set do
    describe Array do
      it "should return Array class" do
        expect(described_class).to eq(Array)
        expect(described_class).not_to eq Set
      end
    end
    it "should return Set class from described_class" do
      expect(described_class).to eq(Set)
      expect(described_class).not_to eq Array
    end
  end

end