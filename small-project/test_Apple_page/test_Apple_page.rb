require 'watir-webdriver'
include Watir
require 'logger'

# path store file: script, data file, logs...
test_name = 'TEST_Scenario_3'
dir_path = File.dirname(__FILE__)
if !Dir.exist?("logs") 
	Dir.mkdir("logs/#{test_name}")
	# File.new('_logFile.log')
end




#create log file
# name_log = 'TEST_Scenario_3'
# dir_path = File.expand_path(File.join(File.dirname(__FILE__), '/logs/', name_log))
# puts dir_path
# Dir.mkdir("logs")
# file = File.new(file_path)
# # file = File.open(dir_path + '/logs/' + name_log + '_logFile.log', File::WRONLY | File::APPEND |	File::CREAT)
# logger = Logger.new(file)

# # Step 1: Open chrome
# logger.info "::::" + name_log + " | START TESTING on Chrome"
# logger.info ("Step 1: Open Chrome")
# browser = Watir::Browser.new :Chrome

# # Step 2: Navigate to http://www.baidu.chrome
# logger.info ("Step 2: Navigate to http://www.baidu.com")
# url = 'http://www.baidu.com'
# browser.goto url
# logger.info ("=> Windowt title:") + browser.title