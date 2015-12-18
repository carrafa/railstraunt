class Addpartyindex < ActiveRecord::Migration

  def change
    add_index :orders, :party_id
  end

end
