require 'rails_helper'
RSpec.describe 0 do
  it{is_expected.to be_zero}
  it{should be_zero}
end

RSpec.describe [1,2,3] do
  it{is_expected.not_to  be_empty}
  it{should_not be_empty}
end

RSpec.describe Hash do

  subject {{:foo  => 1,:bar => 5}}

  it{is_expected.to have_key(:foo)}
  it{is_expected.to have_key(:bar)}
  it{is_expected.not_to have_key(:test)}

  it{should have_key(:foo)}
  it{should have_key(:bar)}
  it{should_not have_key(:test)}

end

class Hash
  def has_all_string_keys?
    keys.all? { |k| String === k }
  end
end

RSpec.describe "etetet" do
  subject {{:foo=> 1,:bar => 2}}

  it{ is_expected.not_to have_all_string_keys }
end