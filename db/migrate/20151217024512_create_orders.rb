class CreateOrders < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :name
      t.string :allergies
      t.string :notes
      t.integer :vip_status
      t.references :party, index: true, foreign_key: true

      t.timestamps null: false
    end
    
    create_table :orders do |t|
      t.references :dish, index: true, foreign_key: true
      t.references :guest, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
