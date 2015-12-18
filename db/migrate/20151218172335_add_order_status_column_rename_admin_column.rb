class AddOrderStatusColumnRenameAdminColumn < ActiveRecord::Migration
  def change
    change_column :users, :admin, :string
    rename_column :users, :admin, :account
    add_column :orders, :status, :string
    add_column :parties, :status, :string
  end
end
