class OrderItem < ApplicationRecord
  belongs_to :order

  validates :product_name, :order_id, presence: true
  validates_length_of :product_name, minimum: 3, maximum: 15
end
