# frozen_string_literal: true
require_relative '../support/env'

Given('I am in page www.google.com') do
  @browser.goto 'https://www.google.com/'
end

When('I input text in searching') do
  pending # browser.input(class: 'gNO89b').click
end

Then('I see search result') do
  pending # Write code here that turns the phrase above into concrete actions
end

