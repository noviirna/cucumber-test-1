require 'watir'

Before do
  @browser = Watir::Browser.new
  @browser.original_window.maximize
end

