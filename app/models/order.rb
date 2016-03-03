class Order < ActiveRecord::Base
  belongs_to :user
  has_many :line_items
  validates_presence_of :shipping_name, :shipping_address, :payment_type
  validates_inclusion_of :payment_type in PAYMENT_TYPES
  PAYMENT_TYPES = ["Monopoly Money", "Doubloons", "Credit Card", "Paypal, "Bitcoins"]
  validates_inclusion_of :payment_type, in: PAYMENT_TYPES
end
