require 'watir-webdrive'
require 'rspec'


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
    end
end