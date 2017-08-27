require "rails_helper"

RSpec.describe "expect messages on double object" do
   # it "expect messages #foo it should get failed without calling foo method" do
   #   double = double("Some class")
   #
   #   # expect{
   #   #   expect(double).to receive(:foo)
   #   # }.to raise_error
   #   expect(double).to receive(:foo)
   #
   # end

   it "expect message and passes successfully" do
     double = double("some class")
     expect(double).to receive(:foo)

     double.foo
   end
end

# RSpec.describe "negative expect message exception" do
#   it "upon calling the method foo should get fail " do
#     double = double("some class").as_null_object
#     expect(double).not_to receive(:foo)
#
#     double.foo
#   end
# end

RSpec.describe "should pass the negative message exception" do
   it "" do
     double = double("some class").as_null_object
     expect(double).not_to receive(:foo)
   end
end
