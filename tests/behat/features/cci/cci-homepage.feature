@cci
@api
@javascript

Feature: verify specific links on homepage
    
  Scenario: Verify the main logo goes to home page
    Given I am not logged in
    When I am on the homepage
    When I follow "Connect CI" 
    Then I should be on the homepage

  Scenario: Verify the main page has expected content
    Given I am not logged in
    When I am on the homepage
    Then I should see "Welcome to Connect Cyberinfrastructure"
    And I should see "A landing page for all our affiliated sites."
    And I should see "Connect.Cybinfrastructure is a family of portals"
    And I should see "Card View"
    And I should see "List View"
    And I should see "CAREERS Cyberteam"
    And I should see "Great Plains Cyberteam"
    And I should see "ACCESS Facilitators"
    And I should see "People who use or support people who use ACCESS resources and the ACCESS Resource Allocation System."
    When I click "List View"
    Then I should see "Programs"
    And I should see "Affinity Groups"

    When I am on the homepage
    And I follow "CAREERS Cyberteam" 
    Then I should be on "https://careers-ct.cyberinfrastructure.org/"

    When I am on the homepage
    And I follow "Great Plains Cyberteam"
    Then I should be on "https://greatplains.cyberinfrastructure.org"

    When I am on the homepage
    And I follow "Kentucky Cyberteam"
    Then I should be on "https://kycyberteam.cyberinfrastructure.org"

    When I am on the homepage
    And I follow "Northeast Cyberteam"
    Then I should be on "https://necyberteam.org"

    When I am on the homepage
    And I follow "RMACC"
    Then I should be on "c/communities/rmacc/65"

    When I am on the homepage
    And I follow "SWEETER Cyberteam"
    # TODO - broken
    # Then I should be on "https://sweeter.cyberinfrastructure.org/"

    When I am on the homepage
    And I follow "TRECIS Cyberteam"
    Then I should be on "https://ask.cyberinfrastructure.org/c/cyberteams/trecis/60"

    # TODO - broken
    # When I am on the homepage
    # And I follow "MINES Research Computing"
    # Then I should be on "https://ask.cyberinfrastructure.org/c/locales-data-centers-and-campus-rc/mines-research-computing/36"

    When I am on the homepage
    And I follow "Campus Champions Region 1"
    Then I should be on "affinity-groups/campus-champions-region-1"
    
    When I am on the homepage
    And I follow "Anvil"
    Then I should be on "affinity-groups/anvil"
    And I should see "Purdue University is the home of Anvil"

    

  # TODO - currently broken - see D8-1014
  #Scenario: User is on the homepage and follows contact us
  #  Given I am not logged in
  #  When I am on the homepage
  #  When I follow "Contact Us"
  #  Then I should be on "contact/connect_ci"
  #  And I should see "Welcome to Connect Cyberinfrastructure"
    
  Scenario: Authenticated Verify the main logo goes to home page
    Given I am logged in as a user with the "authenticated" role
    When I am on the homepage
    When I follow "Connect CI" 
    Then I should be on the homepage

  # TODO - currently broken
  #Scenario: Authenticated User is on the homepage and follows contact us
  #  Given I am logged in as a user with the "authenticated" role
  #  When I am on the homepage
  #  When I follow "Contact Us"
  #  Then I should be on "contact/connect_ci"
  #  And I should see "Welcome to Connect Cyberinfrastructure"
    