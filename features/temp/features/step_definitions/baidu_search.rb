require File.join(File.dirname(__FILE__),"User.rb")

Given /^I am on baidu home page$/ do
	@user = User.new
	@user.visit_baidu
end

When /^I search for "(.*?)"$/ do |search_text|
	@user.search_text search_text
end

Then /^I should be able to view the search of "(.*?)"$/ do |expect_text|
    @user.assert_text_exist expect_text
end
