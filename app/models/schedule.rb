class Schedule < ActiveRecord::Base
  attr_accessible :appointment_id, :available, :time_slot
end
