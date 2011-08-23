@alan_bob_carl
Feature: User1 follows User2
  I want Alan to follow Bob and then Carl

  Scenario: Alan follows no one
    Given I am on the home page
    When I follow "List Users"
    And I should see "Alan"
    And I should see "Bob"
    And I should see "Carl"
    And I follow "Show"
    And I should see "Alan"
    And I should see "Following Nobody"
    And pendthis I should see "Not Following Bob"





