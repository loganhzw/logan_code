require 'watir-webdriver'
require 'rspec'
require 'watir'

class BaiduPage
	def initialize
		@browser = Watir::Browser.new :chrome
		@browser.window.maximize
		@browser.goto 'www.baidu.com'
	end

	def search str
		@browser.text_field(:id, 'kw1').set(str)
		@browser.button(:id, 'su1').click
	end

    def has_text text
        @browser.text.should include(text)
    	  # Then(/^cucumber lists all the supported languages$/) do
		  # all_output.should include("Arabic")
		  # all_output.should include("български")
		  # all_output.should include("Pirate")
		  # all_output.should include("English")
		  # all_output.should include("日本語")
		  # end
    end
end