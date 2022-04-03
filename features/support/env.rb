require 'rubygems'
require 'cucumber'
require 'watir'

Selenium::WebDriver::Chrome.driver_path = "C:/chromedriver.exe"

Before do
  browser = Watir::Browser.new :chrome
  $browser = browser
  $browser.window.maximize
end

After do
  $browser.close
end