require 'rails_helper'

RSpec.describe Array do
  describe "when newly created" do
    it{should be_empty}
    it{is_expected.to be_empty}
  end

end

RSpec.describe  Array do
  def new_initialized_array
    [1,2,3]
  end
  subject {new_initialized_array}
  describe "with initialized array" do
    context "it should not be empty" do
      it{should_not be_empty}
      it{is_expected.not_to be_empty}
    end

  end

end