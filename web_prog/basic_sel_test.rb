require "rubygems"
require 'selenium-webdriver'

@xml_urls = []
@urls = []

@driver = Selenium::WebDriver.for :firefox

@input = File.open("/Users/codykemp/Projects/web_prog/selenium_data/test_urls.txt","r")

while(line = @input.gets)
  @urls << line.to_s.chomp
end
@input.close
puts @urls

@urls.each do |url|

  @driver.navigate.to 'http://www.webpagetest.org/'

  puts url

  sleep 2

  @element = @driver.find_element(:css,'input#url')
  @element.send_keys "#{url}"

  @browser_select = @driver.find_element(:css,'select#browser')

  @browser_select.send_keys "IE 11"

  sleep 2

  @start_button = @driver.find_element(:css,'input.start_test').click()


  sleep 3

  @web_url = @driver.current_url

  @xml_url = @web_url.gsub("result", "xmlResult")

  @xml_urls << @xml_url

end

@driver.quit

puts @xml_urls
