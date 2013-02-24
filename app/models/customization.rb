class Customization < ActiveRecord::Base
  attr_accessible :customization, :product_id
  belongs_to :product
end
