class Party < ActiveRecord::Base

  belongs_to :user
  has_many :seats

  def populate_seats num
    seats = {
      "A" => ["A1", "A2", "A3", "A4"],
      "B" => ["B1", "B2", "B3"],
      "C" => ["C1", "C2", "C3", "C4"],
      "D" => ["D1", "D2", "D3", "D4"],
      "Bar" => ["Bar1", "Bar2", "Bar3", "Bar4"]
    }
    return seats[num]
  end


end
