class Appointment < ActiveRecord::Base
  attr_accessible :date, :doctor_id, :patient_id, :time_slot
 # before_save :available
  validates :date, :doctor_id, :patient_id, :time_slot, :presence => true
  belongs_to :doctor
  belongs_to :patient

  SLOTS = [['8 am - 9 am'], ['9 am - 10 am'], ['10 am - 11 am'], ['11 am - 12 pm'], ['12 pm - 1 pm']]

  scope :chronological, order('date DESC')
  scope :latest, lambda{|num| limit(num).order('visit_date DESC')}

  private

  	def available
  		appointments_list = Appointment.all.map{|appointment| appointment.id}
	  	appointments_list.each do|appointment|
	  		date = appointment.date
	  		if appointment.date == self.appointment.date && appointment.time_slot == self.appointment.time_slot
	  			errors.add("This appointment is not available")
	      		return false
	  		end
	  		return true 
		end
	end
end
