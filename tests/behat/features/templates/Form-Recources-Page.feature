@templates
@api
@javascript
Feature: test recources page 
  In order to test the Add resource page

  Scenario: Authenticated user fills out Recource Form 
    Given I am logged in as a user with the "authenticated" role
    When I go to "/form/resource"
    Then I should see "Resource"
    When I fill in "Title" with "TEST"
    When I select "Tool" from "Category"
    When I check "login"
    When I check "Beginner"
    When I fill in "Description" with "TEST Description"
    When I fill in "Link Title" with "TEST Link Title"
    When I fill in "Link URL" with "http://localhost:49185/resource/4"
    When I press "Submit"
    Then I should see "Test"
    






