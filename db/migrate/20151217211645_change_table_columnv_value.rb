class ChangeTableColumnvValue < ActiveRecord::Migration
  def change
    change_column :tables, :name, :string
  end
end
