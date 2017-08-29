require 'appium_lib'
require 'selenium-webdriver'
require 'rspec'
require 'byebug'

def caps
{
 caps:{
  'appPackage' => 'br.com.dafiti',
  'platformName' => 'Android',
  'deviceName' => '192.168.56.101:5555',
  'platformVersion' => '7.0',
  'app' => '../laboratorio_appium_gestos/app/dafiti.apk'
}
}
end

def load_page_object(path)
  Dir[path].each { |file| require file }
end

def wait(seconds)
  Selenium::Webdriver::Wait.new(:timeout => seconds).until {yield}
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
load_page_object('./page_object/*.rb')

@driver.start_driver.manage.timeouts.implicit_wait = 10
