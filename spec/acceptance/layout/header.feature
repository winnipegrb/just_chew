@javascript
Feature: Header

  The layout header

  Scenario: View the application header as guest
    Given I am a guest
    When  I land on the welcome page
    Then  I should see the page header
    And   I should see the page header logo
    And   I should see the page header items
    And   I should not see the page header order type toggle

  Scenario: View the application header as user
    Given I am a user
    When  I land on the welcome page
    Then  I should see the page header
    And   I should see the page header logo
    And   I should see the page header items
    And   I should not see the page header order type toggle
