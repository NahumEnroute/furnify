class AddAlreadySendToFurnitureDeliveryModel < ActiveRecord::Migration[6.1]
  def change
    add_column :furniture_deliveries, :product_send, :boolean, default: false
  end
end
