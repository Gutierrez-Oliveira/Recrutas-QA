require "capybara"
require "capybara/cucumber"
require "faker"
require "pry"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 30
    config.app_host = "http://automationpractice.com/index.php"
end