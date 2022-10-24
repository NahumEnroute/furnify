class AddFieldsToFurniture < ActiveRecord::Migration[6.1]
  def change
    add_column :furnitures, :price, :decimal
    add_column :furnitures, :length, :decimal
    add_column :furnitures, :width, :decimal
    add_column :furnitures, :height, :decimal
    add_column :furnitures, :weight, :decimal
  end
end
