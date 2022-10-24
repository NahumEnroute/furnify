class FurnitureDelivery < ApplicationRecord
  belongs_to :furniture
  before_save :add_delivery_date

  def add_delivery_date
    if self.product_send
      self.delivery_date = Date.today
    end
  end

  def total_delivery_cost
    (self.furniture.price * self.quantity) + self.cost
  end
end
