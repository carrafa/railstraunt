class RenameTableColumn < ActiveRecord::Migration
  def change
    rename_column :tables, :table, :name
  end
end
