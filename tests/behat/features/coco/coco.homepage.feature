@coco
@api
Feature: verify specific links on homepage

  Scenario: User is on the homepage
    Given I am not logged in
    When I am on the homepage
    When I follow "Contact Us"
    Then I should be on "contact/coco"
    And I should see "CoCo"
    
  Scenario: Verify the main logo goes to home page
    Given I am not logged in
    When I am on the homepage
    When I follow "CoCo" 
    Then I should be on the homepage
    