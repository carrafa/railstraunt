class User < ActiveRecord::Base

  has_many :tables
  has_many :seats, through: :tables
  has_many :orders, through: :seats
  has_secure_password

end
