@alan_bob_carl
Feature: User1 follows User2
  I want Alan to follow Bob and then Carl

  Background:
    Given I am on the home page
    When I follow "Create a User"
    And I fill in "Name" with "Alan"
    And I press "Create User"
    When I follow "Create a User"
    And I fill in "Name" with "Bob"
    And I press "Create User"
    When I follow "Create a User"
    And I fill in "Name" with "Carl"
    And I press "Create User"

  Scenario: Alan follows no one
    Given I am on the home page
    When I follow "List Users"
    And I should see "Alan"
    And I follow "Show"
    And pending_somthun



