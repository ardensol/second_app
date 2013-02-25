class Customer < ActiveRecord::Base
  attr_accessible :address, :called, :delivered, :email, :height, :name, :phonenumber, :weight, :meas_initial_attributes
  has_one :meas_initial, dependent: :destroy
  #line below creates meas_initial so it will show in the new_customer view
  before_create :build_meas_initial
  has_one :meas_final, dependent: :destroy
  accepts_nested_attributes_for :meas_initial
  has_many :orders
  belongs_to :user

end
#http://stackoverflow.com/questions/3808782/rails-best-practice-how-to-create-dependent-has-one-relations