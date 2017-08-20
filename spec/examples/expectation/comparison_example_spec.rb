require 'rails_helper'

RSpec.describe "comaprison using example" do
  it "comapare using different camparion operator" do
    expect(18).to be > 15
    expect(18).to be < 19
    expect(18).to be>= 18
  end
end

RSpec.describe 18 do
  it{should be > 15}
  it{should be < 19}
  it{should be >= 18}

  it{is_expected.to be > 15}
  it{is_expected.to be < 19}
  it{is_expected.to be>= 18}
end