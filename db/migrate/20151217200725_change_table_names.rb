class ChangeTableNames < ActiveRecord::Migration
  def change
    rename_table :parties, :tables
    rename_table :guests, :seats
  end
end
