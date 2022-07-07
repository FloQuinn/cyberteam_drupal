@sweeter
@api
Feature: test sweeter domain
  In order to test the sweeter domain
  As a user of the admin role
  I need to switch sweeter to the default domain

  Scenario: Admin user sets sweeter domain to the default
    Given I am logged in as a user with the "administrator" role
    When I go to "admin/config/domain/edit/sweeter_cyberinfrastructure_org"
    When I select "1" from "Default domain"
    When I fill in "Hostname" with "cyberteam.lndo.site"
    When I press "Save"
    Given the cache has been cleared
    When I am on the homepage
    Then I should get a "200" HTTP response
    Then I should see "CC* Team: SWEETER"

