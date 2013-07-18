require "spec_helper"

describe Turn do

  describe "#roll" do

    let(:turn) { Turn.new }

    it "returns 5 numbers" do
      expect(turn.roll.size).to eq 5
    end

    it "all numbers should be less than six but greater than zero" do
      expect(turn.roll.all? { |n| n > 0 && n < 6 }).to be_true
    end

    it "multiple rolls return different values" do
      roll1 = turn.roll
      roll2 = turn.roll
      expect(roll1).to_not eq roll2
    end

  end

end
