# frozen_string_literal: true
require_relative '../support/env'

Given('I am in page www.amazon.com on my browser') do
  @browser.goto 'https://www.amazon.com/'
end

When('I click the sign in button') do
  @browser.a(id: "nav-link-accountList").click
end

When('I input an email address that is unregistered & click submit') do
  @browser.text_field(id: 'ap_email').set('fdasdfasdfasdf@mail.com')
  @browser.input(id: 'continue').click
end

Then('I see error message : We cannot find an account with that email address') do
  if @browser.text.include? 'We cannot find an account with that email address'
    log 'true : the email is not registered.'
  else
    log 'false : the email is registered'
  end
end

Given('I go to page www.amazon.com on my browser') do
  @browser.goto 'https://www.amazon.com/'
end

When('I input a random mobile number that is unregistered & click submit') do
  @browser.text_field(id: 'ap_email').set('9013849183401984')
  @browser.input(id: 'continue').click
end

When('I input a mobile number that is registered & click submit') do
  @browser.text_field(id: 'ap_email').set('6281286235938')
  @browser.input(id: 'continue').click
end

When('I input an email that is registered & click submit') do
  @browser.text_field(id: 'ap_email').set('novi.irnawati@gmail.com')
  @browser.input(id: 'continue').click
end

Then('I see error message : We cannot find an account with that mobile number') do
  if @browser.text.include? 'We cannot find an account with that mobile number'
    log 'true : the mobile number is not registered.'
  else
    log 'false : the mobile number is registered'
  end
end

When('I input a wrong password') do
  @browser.text_field(id: 'ap_password').set('9813741341739841')
  @browser.input(id: 'signInSubmit').click
end

Then('I see error message : Your password is incorrect') do
  if @browser.text.include? 'Your password is incorrect'
    log 'true : password is incorrect.'
  else
    if @browser.text.include? 'To better protect your account, please re-enter your password and then enter the characters as they are shown in the image below.'
      log 'true : password is incorrect.'
    else
      log 'false : password is correct'
    end
  end
end

at_exit do
  @browser.close
end