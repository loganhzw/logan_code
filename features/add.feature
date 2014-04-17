Feature: Unit test for Calculator
	
	Scenario: Add two numbers
		Given I have a calculator created
		When I add '3' and '5'
		Then I should ge the result of '8'