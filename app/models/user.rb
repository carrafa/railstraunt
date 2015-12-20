class User < ActiveRecord::Base

  has_many :parties
  has_many :orders, through: :parties
  has_secure_password

  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :username, length: {in: 2..10}

  def get_total_revenue
    orders = Order.all
    total = []
    orders.each do |order|
      total.push(order.dish.price)
    end
    return total.inject(:+)
  end

  def get_most_popular_dish
    orders = Order.all
    all_dishes = []
    orders.each do |order|
      all_dishes.push(order.dish.name)
    end
    freq = all_dishes.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
    return all_dishes.max_by { |v| freq[v] }
  end

  def get_total_parties
    parties = Party.all
    return parties.to_a.count
  end

  def get_total_dishes
    dishes = Dish.all
    return dishes.to_a.count
  end



end
