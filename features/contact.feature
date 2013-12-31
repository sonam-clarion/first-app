Feature: Contact me
	  In Order to get in touch
	  A Visitor
	  Should fill up contact form

    Scenario: Sends a Contact message
  	    Given I am on the contact page
  	    And I fill in "contact_name" with "Sonam"
        And I fill in "contact_subject" with "Hello"
  	    And I fill in "contact_email" with "sonam.shah@clariontechnologies.co.in"
  	    And I fill in "contact_message" with "Great post!"    
        When I press "Send message"
        Then page should have flash_notice message "Your message was successfully delivered."