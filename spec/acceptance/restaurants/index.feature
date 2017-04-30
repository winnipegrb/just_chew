@javascript
Feature: Restaurants Index

  Restaurant list

  Background:
    Given there are some restaurants

  Scenario: View the restaurant list
    When I land on the restaurants page
    Then I should see restaurants in a list

  Scenario: Click a restaurant in list
    Given I am on the restaurants page
    When  I click a restaurant in the list
    Then  I should land on the menu page
