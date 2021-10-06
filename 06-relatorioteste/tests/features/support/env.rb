require 'capybara'
require 'capybara/cucumber'
require 'faker'
require 'selenium-webdriver'
require 'site_prism'
require 'ostruct'
require_relative 'page_helper.rb'
require_relative 'helper.rb'

# BROWSERS = ENV['BROWSERS']
# AMBIENTE = ENV['AMBIENTE']
# CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

Selenium::WebDriver::Chrome::Service.driver_path = '.\chromedriver.exe'

World(Pages)
World(Helper)

Capybara.register_driver :chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument('start-maximized')
 
  Capybara::Selenium::Driver.new app, browser: :chrome, options: options
end

Capybara.configure do |config|
  #seleium    selenium_chrome     selenium_chrome_healess
  config.default_driver = :chrome #usa o chrome como browser de teste
  #config.app_host = CONFIG['url_padrao']
  config.app_host = 'https://automacaocombatista.herokuapp.com' #seta o site no qual sera efetuado o teste
  config.default_max_wait_time = 5 #caso o elemento não apareça na tela em 5 segundos ira falhar        
end
