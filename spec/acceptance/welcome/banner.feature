@javascript
Feature: Welcome Banner

  The welcome page banner

  Scenario: View the welcome page banner
    When I land on the welcome page
    Then I should see the welcome page banner
    And  I should see the welcome page banner form
