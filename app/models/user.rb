class User < ActiveRecord::Base

  has_many :parties
  has_many :orders, through: :parties
  has_secure_password

end
