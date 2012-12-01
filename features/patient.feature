Feature: Doctor information
	In order to track my patients
	As the clinic_app admin
	I want to be able to list, create, update, and delete patient information

		Background:
			Given an initial business

				Scenario: List Patients
					Given I am on the 'patients' page
					And for the "th", I should see Health"
					And for the "th", I should see "First name"
					And for the "th", I should see "Last name"
					And for the "th", I should see "Date of birth"
					And for the "th", I should see "Gender"
					And for the "th", I should see "Phone"
					And for the "th", I should see "Email"
					And for the "td", I should see "1"
					And for the "td", I should see "Srinjoy"
					And for the "td", I should see "Chakravarty"
					And for the "td", I should see "Chakravarty"

					And for the "td", I should see "chaxz93@gmail.com"
					And for the "td", I should see "97455641191"
					And for the "td", I should see "Dentist"
					And for the "body", I should see "Listing doctors"
					And for the "body", I should see a link to "New Doctor"

				Scenario: Create Patient
					Given I am on the 'New Doctor' page
					When I enter "Talal" for "First name"
					And I enter "Shoeb" for "Last name"
					And I select "Male" for "Gender"
					And I enter "talal@cmu.edu" for "Email"
					And I enter "97477155015" for "Phone"
					And I select "Dentist" for "Specialization"  
					And I click the "Create Doctor" button
					Then I should get to see "Doctor was successfully created."
					And I should get to see "First name:"
					And I should get to see "Talal"
					And I should get to see "Last name:"
					And I should get to see "Shoeb"
					And I should get to see "Gender:"
					And I should get to see "Male"
					And I should get to see "Email:"
					And I should get to see "talal@cmu.edu"
					And I should get to see "Phone:"
					And I should get to see "97477155015"
					And I should get to see "Specialization:"
					And I should get to see "Dentist" 

				Scenario: Update Patient
					Given I am on the 'doctors' page
					When I follow the "Edit" link for "Talal"
					And I change the email address to "chaxz@cmu.edu"
					And I click the "Update" button
					Then I should see "Doctor was successfully updated."
					And I should see "Email: chaxz@cmu.edu"

				Scenario: Delete Patient
   					Given I am on the 'doctors' page
    				When I follow the "Destroy" link for "Talal"
    				Then I should not see "Talal"	


