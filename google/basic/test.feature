Feature: Open Google
  Sign in to your amazon.com account

  Scenario: Open google
    Given I am in page www.google.com
    When I input text in searching
    Then I see search result
