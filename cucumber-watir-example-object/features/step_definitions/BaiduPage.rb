require 'watir-webdriver'
require 'rspec'

class BaiduPage
	
	def initialize(browser)
		@browser = browser
		@browser.goto 'http://www.baidu.com'
	end

	# def search str
	# 	@browser.text_field(:id, 'kw1').set str
	# 	@browser.button(:id, 'su1').click
	# end

	def send_key key_str
		@browser.text_field(:id, 'kw1').set key_str
	end

	def click_search
		@browser.button(:id, 'su1').click
	end

	def has_text text
		@browser.div(:id, "content_left").wait_until_present
		@browser.title.should =~ /#{text}/
	end

end