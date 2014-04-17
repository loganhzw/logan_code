require 'watir-webdriver'

browser = Watir::Browser.new :chrome
browser.window.maximize
browser.goto 'www.baidu.com/'
browser.text_field(:id => 'kw1').set "ThoughtWorld"
browser.button(:id => 'su1').click