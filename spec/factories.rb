require 'factory_girl'
FactoryGirl.define do
	factory :patient do
		first_name "Srinjoy"
		last_name "Chakravarty"
		email "chaxz93@gmail.com"
		password "srinjoy93"
		password_confirmation "srinjoy93"
		date_of_birth 4.years.ago.to_date
		gender "Male"
		health_id 1
		phone "97455641191"
	end

    factory :doctor do
		first_name "Talal"
        last_name "Shoeb"
        gender "Male"
        email "talal@cmu.edu"
        phone "97477155015"
        specialization "Dentist"
    end

    factory :appointment do
        doctor_id 1
        date 5.days.ago
		patient_id 1
	end

    factory :schedule do
		doctor_id 1
		available true
		time_slot "8 am - 9 am"
	end	
end
