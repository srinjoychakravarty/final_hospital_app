class Doctor < ActiveRecord::Base
  attr_accessible :email, :first_name, :gender, :last_name, :phone, :specialization
  has_many :appointments
  has_many :patients ,:through => :appointments
  before_save :format_phone
  validates :email, :first_name, :gender, :last_name, :phone, :specialization, :presence => true
  validates_format_of :email, :with => /^[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info|qa))$/i, :message => "is not a valid format"
  validates_format_of :phone, :with => /^(\+?\d{11}|\+?\d{3}?[-.]?\d{4}[-.]?\d{4})$/, :message => "should be 11 digits (country code needed) delimited with dashes only"
  GENDERS = [['Male'], ['Female']]
  Specialization = [['Audiologist'], ['Allergist'], ['Andrologist'], ['Anesthesiologist'], ['Cardiologist'], ['Dentist'], ['Dermatologist'], ['Emergency Doctor'], ['Endocrinologist'], ['ENT Specialist'], ['Epidemiologist'], ['Family Practician'], ['Gastroenterologist'], ['Geneticist'], ['Gynecologist'], ['Hematologist'], ['Hepatologist'], ['Immunologist'], ['Infectious Disease Specialist'], ['Internist'], ['Internal Medicine Specialist'], ['Microbiologist'], ['Neonatologist'], ['Nephrologist'], ['Neurologist'], ['Neurosurgeon'], ['Obstetrician'], ['Oncologist'], ['Ophthalmologist'], ['Orthopedic Surgeon'], ['Perinatologist'], ['Paleopathologist'], ['Parasitologist'], ['Pathologist'], ['Pediatrician'], ['Physiologist'], ['Physiatrist'], ['Plastic Surgeon'], ['Podiatrists'], ['Psychiatrist'], ['Pulmonologist'], ['Radiologists'], ['Rheumatologsist'], ['Surgeon'], ['Urologist'], ['Veterinarian']]  

  scope :alphabetical, order('last_name, first_name')

	def proper_name
	    first_name+" "+last_name
	end

	def name
	    last_name+", "+first_name
	end

	private

	def format_phone
	    phone = self.phone.to_s
	    phone.gsub!(/[^0-9]/, "")
	    self.phone = phone
	end
end
