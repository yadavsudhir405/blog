require 'spec_helper'
RSpec.describe Bowling, "#score" do
  context "with no strikes and spares" do
    it "should sums the pin count for each roll" do
      bowling = Bowling.new
      20.times {
        bowling.hit_pin 4
      }
      expect(bowling.score).to equal? 80
    end
  end
end