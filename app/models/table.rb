class Table < ActiveRecord::Base

  belongs_to :user
  has_many :seats

end
