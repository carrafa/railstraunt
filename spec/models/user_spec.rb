require "rails_helper"

RSpec.describe User, type: :model do


    let(:user) { User.create({ username:"dio", password:"dio" }) }
    let(:party) {user.parties.create({ name:"A", user_id: user.id})}

    it "when a User is created it should have its password encrypted." do

      actual = user.password_digest.length > 0
      expected = true
      expect(actual).to eq(expected)

    end



end
