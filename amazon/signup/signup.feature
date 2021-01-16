Feature: Sign Up
  Sign up an amazon.com account

  Scenario: Move to sign up page
    Given I am in page www.amazon.com on my browser
    When I hover over click the sign up & click the 'Start here'
    Then I move to screen sign up

  Scenario: Input empty
    Given I am in page signup for amazon amazon on my browser
    When Click Create Your Amazon Account without inputting any required text field
    Then It will show message Error Enter your fieldname