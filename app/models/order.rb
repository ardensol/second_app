class Order < ActiveRecord::Base
  attr_accessible :customer_id, :order_number, :order_date, :assigned_factory, :order_value, :order_cogs, :order_discount, :order_gross, :status, :expected_ship_date, :shipped_date, :shipping_number, :altered, :refunded, :called, :alt_ref_cost, :shirts_attributes, :suits_attributes, :pants_attributes, :others_attributes
  has_many :shirts
  has_many :suits
  has_many :pants
  has_many :others

  belongs_to :customer
  validates :customer, :presence => true
  accepts_nested_attributes_for :shirts, allow_destroy: true
  accepts_nested_attributes_for :suits, allow_destroy: true
  accepts_nested_attributes_for :pants, allow_destroy: true
  accepts_nested_attributes_for :others, allow_destroy: true
end
