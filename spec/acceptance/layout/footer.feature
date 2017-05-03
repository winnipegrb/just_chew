@javascript
Feature: Welcome Footer

  The welcome page footer

  Scenario: View the welcome page footer
    When I land on the welcome page
    Then I should see the page footer
    And  I should see the page footer social media links
    And  I should see the page footer copyleft
