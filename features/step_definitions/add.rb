require File.join(File.dirname(__FILE__),"Calculator")
require 'rspec'

Given(/^I have a calculator created$/) do
  @calculator = Calculator.new
end

When(/^I add '([^"]*)' and '([^"]*)'$/) do |arg1, arg2|
  @result = @calculator.add(arg1.to_i, arg2.to_i)
end

Then(/^I should ge the result of '([^"]*)'$/) do |expected_result|
  @result.should == expected_result.to_i
end

