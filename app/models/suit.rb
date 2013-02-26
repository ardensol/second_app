class Suit < ActiveRecord::Base
  attr_accessible :advanced, :button, :contrast_area, :contrast_color, :cuffs, :lapel, :pleats, :price, :quantity, :suit_name, :vent
  belongs_to :order
end
