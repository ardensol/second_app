class Other < ActiveRecord::Base
  attr_accessible :description, :other_name, :price, :quantity
  belongs_to :order
end
