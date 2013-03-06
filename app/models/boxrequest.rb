class Boxrequest < ActiveRecord::Base
  attr_accessible :customer_id, :date_sent, :followed_up, :request_date, :requesttype
  belongs_to :customer

  validates :customer, presence: true
end
