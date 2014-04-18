module SearchBehavior

	def visit_baidu
		@page = BaiduPage.new
	end

	def search_text text
		@page.search text
	end

	def assert_text_exist text
		@page.has_text text
	end

end