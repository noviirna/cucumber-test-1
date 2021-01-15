Feature: Sign In
  Sign in to your amazon.com account

  Scenario: Sign in with unregistered email address
    Given I am in page www.amazon.com on my browser
    And I click the sign in button
    When I input an email address that is unregistered & click submit
    Then I see error message : We cannot find an account with that email address

  Scenario: Sign in with unregistered mobile number
    Given I am in page www.amazon.com on my browser
    And I click the sign in button
    When I input a random mobile number that is unregistered & click submit
    Then I see error message : We cannot find an account with that mobile number

  Scenario: Sign in with registered mobile number & and wrong password
    Given I am in page www.amazon.com on my browser
    And I click the sign in button
    When I input a mobile number that is registered & click submit
    And I input a wrong password
    Then I see error message : Your password is incorrect

  Scenario: Sign in with registered mobile number & and wrong password
    Given I am in page www.amazon.com on my browser
    And I click the sign in button
    When I input an email that is registered & click submit
    And I input a wrong password
    Then I see error message : Your password is incorrect

