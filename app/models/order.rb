class Order < ActiveRecord::Base
  attr_accessible :customer_id, :order_commission, :order_discount, :order_gross, :order_value, :altered, :refunded, :alt_ref_cost, :products_attributes
  has_many :products
  belongs_to :user
  accepts_nested_attributes_for :products, allow_destroy: true
end
