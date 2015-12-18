class DeleteSeatsTable < ActiveRecord::Migration
  def change
      remove_column :seats, :party_id
      add_column :orders, :party_id, :integer
      add_column :orders, :seat, :string
  end

  def up
    add_index :orders, :party_id
  end

end
