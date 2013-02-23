class Product < ActiveRecord::Base
  attr_accessible :order_id, :product_name, :product_price
end
