class ChangeTableNameBackToParties < ActiveRecord::Migration
  
  def change
    rename_table :tables, :parties
    remove_column :seats, :table_id
    add_column :seats, :party_id, :integer

  end

  def up
    add_index :seats, :party_id
  end

  def down
    remove_index :seats, :table_id
  end

end
