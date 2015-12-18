class Addforeignkey < ActiveRecord::Migration
  def change
    add_foreign_key :orders, :parties
  end
end
