class User < ActiveRecord::Base

  has_many :parties
  has_many :orders, through: :parties
  has_secure_password

  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :username, length: {in: 2..10}

end
