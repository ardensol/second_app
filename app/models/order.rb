class Order < ActiveRecord::Base
  attr_accessible :customer_id, :order_commission, :order_discount, :order_gross, :order_value
end
