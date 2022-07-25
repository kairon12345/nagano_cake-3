class OrderItem < ApplicationRecord

  belongs_to :order
  belongs_to :item

  enum status: {unmanufacturable: 0, wait_production: 1, in_production: 2, production_completed: 3}
end
