@careers
@api
Feature: test footer
  In order to test the footer

  Scenario: User is on the homepage
    Given I am not logged in
    When I am on the homepage
    When I follow "Contact Us"
    Then I should be on "contact/careers_cyberteam"
    And I should see "CAREERS Cyberteam"
    