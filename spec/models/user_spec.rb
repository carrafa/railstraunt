require "rails_helper"

RSpec.describe User, type: :model do


    let(:user) { User.create({ username:"dio", password:"dio" }) }
    let(:party) {user.parties.create({ name:"A", user_id: user.id})}

    it "when a User is created it should have its password encrypted." do

      actual = user.password_digest.length > 0
      expected = true
      expect(actual).to eq(expected)

    end

    it "user should be able to get most popular dish" do

      actual = user.get_most_popular_dish
      expected = "lumberjack breakfast"
      expect(actual) == (expected)
    end

    it "user should be able to count total dishes" do
      actual = user.get_total_dishes
      expected = 12
      expect(actual) == (expected)
    end



end
