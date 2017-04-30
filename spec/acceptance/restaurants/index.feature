@javascript
Feature: Restaurants Index

  Restaurant list

  Scenario: View the restaurant list
    Given there are some restaurants
    When  I land on the restaurants page
    Then  I should see restaurants in a list
