class Order < ActiveRecord::Base
  attr_accessible :customer_id, :order_commission, :order_discount, :order_gross, :order_value, :called, :received_measurement, :in_process, :readytoship, :shipped, :shipping_number, :delivered, :altered, :refunded, :alt_ref_cost, :shirts_attributes, :suits_attributes, :pants_attributes, :others_attributes
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
