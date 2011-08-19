Feature: List Users
  I want to list users

  Scenario: Follow users link
    Given I am on the home page
    When I follow "List Users"
    Then I should see "Listing users"
