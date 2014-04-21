require 'watir-webdriver'

browser = Watir::Browser.new :chrome
 
Before do
  @browser = browser
  @browser.window.maximize
end
 
at_exit do
  browser.close
end