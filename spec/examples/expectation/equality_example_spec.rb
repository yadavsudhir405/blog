require 'rails_helper'

RSpec.describe "do equality test" do
  let(:array1){Array.new([1,2])}
  let(:array2){Array.new([1,2])}

  it "should test various equality matcher" do
    expect(array1).not_to equal(array2)
    expect(array1).to eql (array2)
    expect(array1).to be == array2
  end

  it "using ==" do
    expect(5).to be==5.0
    expect(5).not_to eql 5.0
    expect(5).not_to equal(5.0)
  end

end