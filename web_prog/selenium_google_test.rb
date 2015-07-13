require 'selenium-webdriver'

@driver = Selenium::WebDriver.for :firefox
@driver.navigate.to 'http://www.webpagetest.org/'

@element = @driver.find_element(:css, 'input#url')
@element.send_keys "Cody loves Chocolate!"

sleep 3

@driver.quit
