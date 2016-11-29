@javascript
Feature: Welcome

  The landing page of the website.

  Scenario: View the welcome page
    When I land on the welcome page
    Then I should see the welcome header
