Feature: Standard Business
	
	As a user
	I want to be able to view certain information
	So I can have confidence in the system

		Scenario: Homepage
			When I go to the application root
			Then I should see "Welcome to our homepage!"
			And I should see "Chax Clinic App @ your service!"
			And I should see a button named "Sign up now"
			And I should see a button named "Log In"
		
			
		Scenario: Functionality of Sign-up button
			Given I am on the home page
			When I click on the button named "Sign up now!"
			Then I should navigate to the "Sign Up" page
	

		Scenario: Functionality of Log In button
			Given I am on the home page
			When I click on the button named "Log In"
			Then I should navigate to the "Log in" page
		
					

		Scenario: Aboutpage
			When I go to the about page
			Then I should see "Pages#about"

		Scenario: Contactpage
			When I go to the contact page
			Then I should see "Pages#contact"

		Scenario: Privacypage
			When I go to the privacy page
			Then I should see "Pages#privacy"

		Scenario: Do not see the default rails page
			When I go to the home page
			Then I should not see "You're riding Ruby on Rails!"
			And I should not see "About your application's environment"
			And I should not see "Create your database"

		Scenario: View 'About Us'
			Given I am on the home page
			When I follow the "About Us" link
		

		Scenario: View 'Contact Us'
			Given I am on the home page
			When I follow the "Contact Us" link
			

		Scenario: View 'Privacy Policy'
			Given I am on the home page
			When I follow the "Privacy Policy" link
			

		Scenario: View About Us information in header
			Given I am on the home page
			Then "About Us" should be part of the "header"

		Scenario: View Contact Us information in header
			Given I am on the home page
			Then "Contact Us" should be part of the "header"

		Scenario: View Privacy Policy information in header
			Given I am on the home page
			Then "Privacy Policy" should be part of the "header"			
