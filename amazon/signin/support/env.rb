require 'watir'

Before do
  @browser = Watir::Browser.new
  @browser.original_window.maximize
end

After do |scenario|
  @browser.close
end
