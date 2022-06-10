class Furniture < ApplicationRecord
  has_many :furniture_deliveries

  def self.options_for_select
    pluck(:name, :id)
  end
end
