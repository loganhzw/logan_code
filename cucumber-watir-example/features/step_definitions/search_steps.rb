require 'watir-webdriver'

#Tutorial code can be found at
#http://khughes88.wordpress.com/2010/08/30/cucumber-and-watir-a-quick-tutorial-for-testers/

Given /^I have gone to the Baidu page$/ do
	# @browser = Watir::Browser.new :chrome
	@browser.goto("http://www.baidu.com")
end

When /^I add "(.*?)" to the search box$/ do |item|
	@browser.text_field(:id, "kw1").set(item)
	#pending # express the regexp above with the code you wish you had
end

And /^click the Search Button$/ do
	@browser.button(:id, "su1").click
	#pending # express the regexp above with the code you wish you had
end

Then /^"(.*?)" should be mentioned in the results$/ do |arg1|
	@browser.div(:id, "content_left").wait_until_present
	@browser.div(:id, "content_left").text.should include(arg1)
	#@browser.div(:xpath, "//*[@id=\"rso\"]/li[1]/div").hover
	#@browser.div(:xpath, "//*[@id=\"rso\"]/li[1]/div/div[2]/div").wait_until_present
	# @browser.div(:xpath, "//*[@id=\"rso\"]/li[1]/div/div[2]/div").hover
	# @browser.div(:xpath, "//*[@id=\"nycntg\"]").wait_until_present
	# @browser.div(:xpath, "//*[@id=\"nycntg\"]").text.downcase.should include("cat")
	#pending # express the regexp above with the code you wish you had
end