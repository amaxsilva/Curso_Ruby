require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require_relative 'helper.rb'
require_relative 'page_helper.rb'

Capybara.register_driver :selenium_chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('start-maximized')
 
  Capybara::Selenium::Driver.new app, browser: :chrome, options: options
end

AMBIENTE = ENV['AMBIENTE']
Selenium::WebDriver::Chrome::Service.driver_path = '.\chromedriver.exe'

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")
World(Helper)
World(Pages)
World(Capybara::DSL)
World(Capybara::RSpecMatchers)

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = CONFIG['url_padrao']
  config.default_max_wait_time = 10
end