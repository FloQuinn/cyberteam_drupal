@templates
@api
@javascript
Feature: test individual Affinity Group page 
  In order to test the individual Affinity Group page

  Scenario: Authenticated user Test the individual Affinity Group page
    Given I am logged in as a user with the "authenticated" role
    When I go to "/affinity-groups/cloud-computing"
    
    #Cant test image
   # Then I should see "col-lg-4 col-md-8 mb-3"

    Then I should see "Cloud Computing"
    Then I should see "cloud-commercial"
    Then I should see "People who use or are"
    Then I should see "Join"
    Then I should see "Join On Slack"
    Then I should see "Visit Q&A Platform"
    Then I should see "Mailing List"
    Then I should see "Coordinators"
    Then I should see "Events"
    Then I should see "Resources"
    Then I should see "People"
     