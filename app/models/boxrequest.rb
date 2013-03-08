class Boxrequest < ActiveRecord::Base
  attr_accessible :customer_id, :date_sent, :sent_from, :followed_up, :request_date, :requesttype, :shipping_number
  belongs_to :customer

  validates :customer, presence: true
end
