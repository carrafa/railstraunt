class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :table
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
