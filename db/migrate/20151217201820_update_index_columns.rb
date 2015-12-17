class UpdateIndexColumns < ActiveRecord::Migration
  def change
    remove_column :seats, :party_id
    remove_column :orders, :guest_id
    add_column :seats, :table_id, :integer
    add_column :orders, :seat_id, :integer
  end

  def up
    add_index :seats, :table_id
    add_index :orders, :seat_id
  end
  def down
    remove_index :seats, :party_id
    remove_index :orders, :guest_id
  end
end
