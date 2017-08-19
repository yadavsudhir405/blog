RSpec.shared_examples "a collection" do |collection|
  let(:subject) {collection.new}
  it{should be_empty}
end