class MeasFinal < ActiveRecord::Base
  attr_accessible :belt, :chest, :crotch, :customer_id, :hip, :jacket_length, :knee, :neck, :pants_length, :shoulder_width, :sleeve_length, :sleeve_width, :thigh, :waist, :wrist
  belongs_to :customer

  validates :customer_id, presence: true

end
