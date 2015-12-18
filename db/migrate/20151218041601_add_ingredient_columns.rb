class AddIngredientColumns < ActiveRecord::Migration
  def change
    add_column :ingredients, :name, :string
    add_column :ingredients, :description, :text
    add_column :ingredients, :vegetarian, :integer
  end
end
