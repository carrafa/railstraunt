class Party < ActiveRecord::Base

  belongs_to :user
  has_many :orders
  has_many :dishes, through: :orders

  def populate_seats num
    seats = {
      "A" => ["A1", "A2"],
      "B" => ["B1", "B2"],
      "C" => ["C1", "C2", "C3", "C4", "C6", "C8"],
      "D" => ["D1", "D2", "D3", "D4"],
      "E" => ["E1", "E2", "E3", "E4"],
    }
    return seats[num]
  end


end
