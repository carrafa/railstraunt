require "rails_helper"

RSpec.describe Party, type: :model do

  it "should return seats on party.populate_seats" do
  party = Party.new
  actual = party.populate_seats "A"
  expected = ["A1", "A2"]
  expect(actual).to eq(expected)
  end

  it "should be able to get tip" do

  party = Party.new
  actual = party.tip
  expected = 1

  expect(actual) == expected
  end



end
