Feature: List Users
  I want to list users

  Scenario: Follow users link
    Given I am on the home page
    When I follow "List Users"
    Then I should see "Listing users"
    And I should see "No users have been added yet"

  Scenario: Create 3 users Alan, Bob, Carl
    Given I am on the home page
    When I follow "Create a User"
    And I should see "New user"
    And I fill in "Name" with "Alan"
    And I press "Create User"
    And I should see "User was successfully created."
    And I follow "Create a User"
    And I fill in "Name" with "Bob"
    And I press "Create User"
    And I follow "Create a User"
    And I fill in "Name" with "Carl"
    And I press "Create User"
    And I follow "List Users"
    Then I should see "Listing users"
    And I should see "Alan"
    And I should see "Bob"
    And I should see "Carl"




