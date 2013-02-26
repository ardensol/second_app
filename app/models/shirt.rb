class Shirt < ActiveRecord::Base
  attr_accessible :bottom, :collar, :contrast_area, :contrast_color, :cuffs, :fit, :monongram, :placket, :pocket, :price, :quantity, :shirt_name
  belongs_to :order
end
