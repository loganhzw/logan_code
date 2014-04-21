require 'watir-webdriver'

b = Watir::Browser.new :chrome
b.window.maximize
file_path = File.join(File.dirname(__FILE__), 'popupWindow.html')
b.goto file_path

b.link(:text, 'new window').click
b.window(:title, 'popupWindow1').use do
	b.text_field(:name, 'fname').set 'ok'
end



# require 'selenium-webdriver'

# driver = Selenium::WebDriver.for :chrome
# driver.manage.window.maximize
# file_path = File.join(File.dirname(__FILE__), 'popupWindow.html')
# driver.get file_path

# bc = driver.window_handle
# puts "the main window is #{bc}"
# driver.find_element(:link_text, 'new window').click

# hs = driver.window_handles
# puts "all windwos are: "
# puts hs

# ch = driver.window_handle
# puts "current windows is: #{ch}"

# hs.each do |h|
# 	puts "window above unless block is #{h}"
# 	unless h == ch
# 		puts "window into unless block is #{h}"
# 		driver.switch_to.window(h)
# 		driver.find_element(:name, 'fname').send_keys 'ok'
# 	end
# end