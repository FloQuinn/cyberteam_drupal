@templates
@api
@javascript

Feature: test people page Card view w/ filters 
  In order to test the people page from Card View

  Scenario: Authenticated user tests the people page in Card View and filters
    Given I am logged in as a user with the "authenticated" role
    When I go to "/people/card"

    Then I should see "People"


    And I should see "Programs"
    And I should see "Roles"
    #Affinity Group is not shown on every domain
    #And I should see "Affinity Groups"
    And I should see "Skills"
    And I should see "List view"

    When I fill in "Search the people database" with "testing123"
    And I wait 4 seconds
    Then I should see "No matches found in People."



    When I fill in "Search the people database" with "julie"
    And I wait 4 seconds
    Then I should see "Julie Ma"
 


    When I fill in "Search the people database" with "Northeast"
    And I wait 4 seconds
    Then I should see "Northeast"

    When I fill in "Search the people database" with " "
    And I wait 4 seconds

    When I fill in "edit-roles-target-id--2" with "Student-facilitator"
    And I wait 10 seconds
    Then I should see "Student-facilitator"

    When I fill in "edit-roles-target-id--2" with "Mentor"
    And I wait 10 seconds
    Then I should see "Mentor"

    When I fill in "edit-roles-target-id--2" with "Researcher/Educator"
    And I wait 10 seconds
    Then I should see "Researcher/Educator"

    When I fill in "edit-roles-target-id--2" with "Steering Committee"
    And I wait 10 seconds
    Then I should see "Steering Committee"

    When I fill in "edit-roles-target-id--2" with "Regional Facilitator"
    And I wait 10 seconds
    Then I should see "Regional Facilitator"

    When I fill in "edit-roles-target-id--2" with "Student-facilitator"
    And I wait 10 seconds
    Then I should see "Student-facilitator" 
    