class AddTipColumn < ActiveRecord::Migration
  def change
    add_column :parties, :tip, :integer
  end
end
