require 'watir-webdriver'
require 'rspec'

Given /^I am on baidu home page$/ do
	@browser = Watir::Browser.new :chrome
	@browser.window.maximize
	@browser.goto 'www.baidu.com'
end

When /^I search for '([^"]*)'$/ do |search_text|
	@browser.text_field(:id, 'kw1').set search_text
	@browser.button(:id, 'su1').click
end

Then /^I should be able to view the search result of '([^"]*)'$/ do |result_text|
	@browser.text.should include (result_text)
end
