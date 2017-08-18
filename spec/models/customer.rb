require 'rails_helper'

RSpec.describe Customer do

  let(:subject) {FactoryGirl.build(:customer)}

  it{ is_expected.to validate_presence_of :first_name}

end