require 'rails_helper'

RSpec.describe "Simple double example" do

  it "should thow an error" do
    double = double("some collaborator")
    expect{
      double.foo
    }.to raise_error

  end

  context "with message and allowed valuues defined in hash" do
    it "should not raise an errro" do
      double = double("SomeCollaborator", :foo => 3, :bar => 4)
      expect(double.foo).to eq 3
      expect(double.bar).to eq 4
    end
  end

  context "with allow message with parameter and return value" do
    it "should return greeting message" do
      double = double("Some class")
      allow(double).to receive(:greet_me).with("good morning", "foo").and_return("good morning foo")

      expect(double.greet_me("good morning", "foo" )).to eq("good morning foo")
    end
  end
end