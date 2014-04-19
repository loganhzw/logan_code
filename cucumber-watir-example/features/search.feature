Feature:
  I go to the Baidu search page, and search for an item, I expect to see some reference to that item in the result summary.

Scenario:
  Given I have gone to the Baidu page
  When I add "cats" to the search box
  And click the Search Button
  Then "cats" should be mentioned in the results