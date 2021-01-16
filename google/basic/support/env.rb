require 'watir'

Before do
  @browser = Watir::Browser.new :chrome
  @browser.original_window.maximize
end
