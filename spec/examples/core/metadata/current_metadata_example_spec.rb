require 'rails_helper'

RSpec.describe "example as before and after and it" do
  before(:example) do |example|
      expect(example.metadata[:description]).to eq("is the example of object")
  end

  after(:example) do |example|
    expect(example.description).to eq("is the example of object")
  end
  it "is the example of object" do |example|
      expect(example.description).to eq("is the example of object")
  end
end

RSpec.describe "example as let and subject" do

  let(:name) do |example|
    example.description
  end

  subject {"test"}

  it "is the example of object" do |example|
    expect(name).to eq("is the example of object")
    expect(subject).to eq("test")
  end

  it{is_expected.to eq("test")}

end