@javascript
Feature: Footer

  The layout footer

  Scenario: View the application footer
    When I land on the welcome page
    Then I should see the page footer
    And  I should see the page footer social media links
    And  I should see the page footer copyleft
