@alan_bob_carl
Feature: User1 follows User2
  I want Alan to follow Bob and then Carl

  Scenario: Alan follows no one
    Given I am on the home page
    When I follow "List Users"
    And I should see "Alan"
    And I should see "Bob"
    And I should see "Carl"
    And I follow "Alan"
    And I should see "Alan"
    Then I should see "Alan is following nobody"
    And I should see "Alan is not following Bob yet."
    And I should see "Alan is not following Carl yet."

  Scenario: Alan follows Bob
    Given I am on the home page
    And I follow "List Users"
    And I follow "Alan"
    When I press "Follow Bob"
    Then I should see "Alan is following Bob."

