class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :course
      t.text :description
      t.integer :price
      t.integer :cost

      t.timestamps null: false
    end
  end
end
