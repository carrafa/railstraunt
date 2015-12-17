require "rails_helper"

RSpec.describe User, type: :model do


    let(:user) { User.create({ username:"dio", password:"dio" }) }
    let(:party) {user.parties.create({ table:"A1"})}
    let(:guest) {party.guests.create({ name:"buddy", vip_status: 10})}

    it "when a User is created it should have its password encrypted." do

      actual = user.password_digest.length > 0
      expected = true
      expect(actual).to eq(expected)

    end

    it "when a party is created it should add user_id to party" do
      # party = user.parties.create({ table:"A1" })

      actual = party.user_id
      expected = user.id
      expect(actual).to eq(expected)

    end

    it "guests should have associated user through party " do

      actual = guest.party.user_id
      expected = user.id
      expect(actual).to eq(expected)
    end




end
