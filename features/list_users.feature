Feature: List Users
  I want to list users

  Scenario: Follow users link
    Given I am on the home page
    When I follow "List Users"
    Then I should see "Listing users"
    And I should see "No users have been added yet"

  Scenario: Create and list a user
    Given I am on the home page
    When I follow "Create a User"
    And I should see "New user"
    And this_step_is_pending



