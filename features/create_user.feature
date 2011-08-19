Feature: Create a user
  I want to create a user

  Scenario: Follow create user link
    Given I am on the home page
    When I follow "Create a User"
    Then I should see "New user"
