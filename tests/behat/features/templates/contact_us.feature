@templates
@api
@javascript

Feature: test contact us form

  Scenario: Unauthenticated user fills out the contact us form
    Given I am not logged in
    When I am on the homepage
    When I follow "Contact Us"
    And I should see "Your name"
    And I should see "Your email address"
    And I should see "Subject"
    And I should see "Message"
    # And I should see "Send message"

  Scenario: Unauthenticated user fills out the contact us form
    Given I am logged in as a user with the "authenticated" role
    When I am on the homepage
    When I follow "Contact Us"
    And I should see "Your name"
    And I should see "Your email address"
    And I should see "Subject"
    And I should see "Message"
    # And I should see "Send message"