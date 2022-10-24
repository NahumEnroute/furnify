class AddDeliveryDateToDelivery < ActiveRecord::Migration[6.1]
  def change
    add_column :furniture_deliveries, :delivery_date, :date
  end
end
