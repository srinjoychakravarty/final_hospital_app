class Appointment < ActiveRecord::Base
  attr_accessible :date, :doctor_id, :patient_id, :schedule_id
end
