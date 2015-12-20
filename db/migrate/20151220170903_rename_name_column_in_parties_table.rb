class RenameNameColumnInPartiesTable < ActiveRecord::Migration
  def change
    rename_column :parties, :name, :table
  end
end
