class Schedule < ActiveRecord::Base
  attr_accessible :available, :doctor_id, :time_slot
  belongs_to :doctor
  has_one :appointment, :through => :doctor

  validates :doctor_id, :time_slot, :presence => true
  SLOTS = [['8 am - 9 am'], ['9 am - 10 am'], ['10 am - 11 am'], ['11 am - 12 pm'], ['12 pm - 1 pm']]
  scope :available, where('available = ?', true)
end
