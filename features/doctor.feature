Feature: Doctor information
	In order to track my doctors
	As the clinic_app admin
	I want to be able to list, create, update, and delete doctor information

		Background:
			Given an initial business

				Scenario: List Owners
					Given I am on the 'owners' page
					Then for the "title", I should see "Pet App | Owner Listing"
					And for the "th", I should see "Owner"
					And for the "th", I should see "Country"
					And for the "th", I should see "Email"
					And for the "th", I should see "Active"
					And for the "th", I should see "Address"
					And for the "th", I should see "City"
					And for the "th", I should see "Phone"
					And for the "td", I should see "Rishika Xi"
					And for the "td", I should see "DEN"
					And for the "td", I should see "rishikaachy@yahoo.com"
					And for the "td", I should see "false"
					And for the "td", I should see "MapleWood Street"
					And for the "td", I should see "Silkeborg"
					And for the "td", I should see "97444724223"
					And for the "body", I should see "Member List of Pet-Owners"
					And for the "body", I should see a link to "Add New Owner"

				Scenario: Create Owner
					Given I am on the 'New Owner' page
					Then for the "title", I should see "Pet App | Register Owner"
					When I enter "Srinjoy" for "Firstname"
					And I enter "Chakravarty" for "Lastname"
					And I enter "chaxz93@gmail.com" for "Email"
					And I enter "55566090897" for "Phone"
					And I enter "The Pearl Qatar" for "Address" 
					And I enter "Doha" for "City"  
					And I select "Qatar" for "Country"
					And I check the "Active" box
					And I click the "Create Owner" button
					Then I should get to see "Created new owner Srinjoy Chakravarty!"
					And I should get to see "Name:"
					And I should get to see "Srinjoy Chakravarty"
					And I should get to see "Address:"
					And I should get to see "The Pearl Qatar"
					And I should get to see "Location:"
					And I should get to see "Doha, QA"
					And I should get to see "Email:"
					And I should get to see "chaxz93@gmail.com"
					And I should get to see "Phone:"
					And I should get to see "66090897"
					And I should get to see "Active with QATS: true" 

				Scenario: Update Owner
					Given I am on the 'owners' page
					When I follow the "Edit" link for "Rishika Xi"
					And I change the email address to "chaxz@cmu.edu"
					And I click the "Update" button
					Then I should see "Rishika Xi was successfully updated!"
					And I should see "Email: chaxz@cmu.edu"

				Scenario: Delete Owner
   					Given I am on the 'owners' page
    				When I follow the "Destroy" link for "Rishika Xi"
    				Then I should not see "Rishika Xi"	


