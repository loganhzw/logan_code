Feature:Baidu search
	
	Scenario: search for keyword
		Given I am on baidu home page
		When I search for 'ThoughtWorks'
		Then I should be able to view the search of 'ThoughtWorks'