class CreateFurnitureDeliveries < ActiveRecord::Migration[6.1]
  def change
    create_table :furniture_deliveries do |t|
      t.references :furniture, null: false, foreign_key: true
      t.integer :quantity
      t.integer :cost
      t.string :address

      t.timestamps
    end
  end
end
