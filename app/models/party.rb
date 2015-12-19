class Party < ActiveRecord::Base

  belongs_to :user
  has_many :orders
  has_many :dishes, through: :orders

  def populate_seats num
    seats = {
      "A" => ["A1", "A2"],
      "B" => ["B1", "B2"],
      "C" => ["C1", "C2", "C3", "C4"],
      "D" => ["D1", "D2", "D3", "D4"],
      "E" => ["E1", "E2", "E3", "E4", "E5", "E6"],
      "F" => ["F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8"],
    }
    return seats[num]
  end

  def get_bill
    bill = []
    self.orders.each do |order|
      if order.status != "paid"
      bill.push(order.dish.price)
      end
    end
    return bill.inject(:+)
  end


end
