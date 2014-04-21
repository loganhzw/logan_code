require 'watir-webdriver'

browser = Watir::Browser.new :chrome
browser.window.maximize
 
Before do
  @browser = browser
end
 
at_exit do
  browser.close
end