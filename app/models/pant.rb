class Pant < ActiveRecord::Base
  attr_accessible :cuffs, :pant_name, :pleats, :price, :quantity
  belongs_to :order
end
