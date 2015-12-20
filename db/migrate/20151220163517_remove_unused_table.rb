class RemoveUnusedTable < ActiveRecord::Migration
  def change
    remove_column :orders, :seat_id
  end

  def down
    drop_table :seats
  end
end
