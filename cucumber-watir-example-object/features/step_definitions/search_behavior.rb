require File.join(File.dirname(__FILE__), 'BaiduPage')

module SearchBehavior

	def visit_Baidu
		@page = BaiduPage.new(@browser)
	end

	def user_text user_str
		@page.send_key user_str
	end

	def user_click
		@page.click_search
	end

	def assert_text_exist title_text
		@page.has_text title_text
	end
end