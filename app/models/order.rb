class Order < ActiveRecord::Base

  belongs_to :party
  belongs_to :dish


  def get_time_diff
    time = Time.new.to_i
    min_diff = (time - self.created_at.to_i)/60
    return min_diff
  end

end
