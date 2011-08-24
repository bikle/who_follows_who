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
    And I should see "Alan is not following Bob."
    And I should see "Alan is not following Carl."

  Scenario: Alan follows Bob
    Given I am on the home page
    And I follow "List Users"
    And I follow "Alan"
    When I press "I want Alan to follow Bob"
    Then I should see "Alan is following Bob."

  Scenario: Alan un-follows Bob
    Given I am on the home page
    And I follow "List Users"
    And I follow "Alan"
    And I press "I want Alan to follow Bob"
    And I should see "Alan is following Bob."
    When I press "I do not want Alan to follow Bob"
    Then I should see "Alan is not following Bob."

  Scenario: Alan follows Bob who then sees Alan
    Given I am on the home page
    And I follow "List Users"
    And I follow "Alan"
    When I press "I want Alan to follow Bob"
    And I follow "List Users"
    And I follow "Bob"
    Then I should see "Alan is following Bob."
