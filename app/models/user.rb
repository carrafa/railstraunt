class User < ActiveRecord::Base

  has_many :parties
  has_many :seats, through: :parties
  has_many :orders, through: :seats
  has_secure_password

end
