RSpec.shared_examples "some example" do |parameter|
  let(:some_example) {parameter}

  it "uses the given parameter" do
    expect(some_example).to eq(some_example)
  end

end