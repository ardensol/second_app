class Product < ActiveRecord::Base
  attr_accessible :order_id, :product_name, :product_price, :customizations_attributes
  has_many :customizations
  accepts_nested_attributes_for :customizations, allow_destroy: true
  belongs_to :order
end
