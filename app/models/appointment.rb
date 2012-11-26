class Appointment < ActiveRecord::Base
  attr_accessible :date, :doctor_id, :patient_id
  belongs_to :doctor
  belongs_to :patient
  has_one :schedule, :through => :doctor
  validates :date, :doctor_id, :patient_id, :presence => true

  scope :chronological, order('date DESC')
  scope :latest, lambda{|num| limit(num).order('visit_date DESC')}
end
