require 'rails_helper'

RSpec.describe Array do

  subject {[7,8,9]}

  describe "has elements" do
    it "should have predescribed elements" do
      expect(subject).to eq([7,8,9])
    end
  end

end

RSpec.describe  Array do
  element_list =[1,2,3]
  subject {element_list.pop}

  it "is memorized across call " do
    expect{
      3.times { subject }
    }.to change{element_list}.from([1,2,3]).to([1,2])
    expect(subject).to eq(3)
  end

  it "is not memorized across example" do
    expect{
      subject
    }.to change{element_list}.from([1,2]).to([1])
    expect(subject).to eq(2)
  end

end

RSpec.describe "subject bang method" do
  let(:element_list) {[1,2,3]}
  subject! {element_list.push(99)}
  it "should call the  subject bang method before example" do
    element_list.push(100)
    expect(element_list).to eq([1,2,3,99,100])
  end
end