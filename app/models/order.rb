class Order < ActiveRecord::Base

  belongs_to :party
  belongs_to :dish


  def get_time_diff
    time = Time.new
    hour_diff = time.hour - self.created_at.hour
    min_diff = time.min - self.created_at.min
    return time
  end

end
