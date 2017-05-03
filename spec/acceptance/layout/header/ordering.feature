@javascript
Feature: Ordering Header

  The ordering header

  Scenario: View the ordering header as guest
    Given I am a guest
    When  I land on the restaurants page
    Then  I should not see the page header order type toggle

  Scenario: View the ordering header as user
    Given I am a user
    When  I land on the restaurants page
    Then  I should see the page header order type toggle

  Scenario: View the application header as user
    Given I am a user
    And   I am on the restaurants page
    When  I toggle the header order type toggle
    Then  I should see the header order type toggle switch
    And   I should have my order type preference updated
