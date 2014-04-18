require File.join(File.dirname(__FILE__), "Search-behavior")

class User
	include SearchBehavior
	# def initialize
	# 	@browser = Watir::Browser.new :chrome
	# end
end
