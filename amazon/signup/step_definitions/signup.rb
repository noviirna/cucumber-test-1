# frozen_string_literal: true
require_relative '../support/env'

Given('I am in page www.amazon.com on my browser') do
  @browser.goto 'https://www.amazon.com/'
end

When("I hover over click the sign up & click the 'Start here'") do
  @browser.element(id: 'nav-link-accountList').fire_event(:mouseover)
  @browser.a(text: "Start here.").click
end

Then("I move to screen sign up") do
  url = @browser.url
  if url.include? 'https://www.amazon.com/ap/register'
    log "correct"
  else
    log "false : not in sign up screen"
  end
end

Given('I am in page signup for amazon amazon on my browser') do
  @browser.goto 'https://www.amazon.com/'
  @browser.element(id: 'nav-link-accountList').fire_event(:mouseover)
  @browser.a(text: "Start here.").click
end

When('Click Create Your Amazon Account without inputting any required text field') do
  @browser.element(id: 'continue').fire_event(:click)
end

Then('It will show message Error Enter your fieldname') do
  if @browser.div(id: 'auth-password-missing-alert').style.include? 'display: block;'
    log "correct"
  end
  if @browser.div(id: 'auth-password-missing-alert').style.include? 'display: block;'
    log "correct"
  end
  if @browser.div(id: 'auth-customerName-missing-alert').style.include? 'display: block;'
    log "correct"
  end
end