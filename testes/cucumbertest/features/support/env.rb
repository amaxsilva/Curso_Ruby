    #require 'capybara/cucumber'
    require 'capybara'
    require 'capybara/dsl'
    require 'capybara/rspec/matchers'
    require 'selenium-webdriver'
    require 'pry'
    require 'site_prism'
    require_relative 'utils'

    BROWSER = ENV['BROWSER']
    AMBIENTE = ENV['AMBIENTE']
    CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")


    World(Capybara::DSL)
    World(Capybara::RSpecMatchers)
    
    Selenium::WebDriver::Chrome::Service.driver_path = '.\chromedriver.exe'
    #Capybara.register_driver :chrome do |app|
     # Capybara::Selenium::Driver.new(app, browser: :chrome)
   # end    

     Capybara.register_driver :chrome do |app|
       options = Selenium::WebDriver::Chrome::Options.new
       options.add_argument('start-maximized')
      
       Capybara::Selenium::Driver.new app, browser: :chrome, options: options
     end

# Capybara.register_driver :selenium do |app|
#    if BROWSER.eql?('chrome')
#       Capybara::Selenium::Driver.new(app, :browser => :chrome,)
#   elsif BROWSER.eql?('firefox') 
#       Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette =>true)
#   elsif BROWSER.eql?('ie') 
#       Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
#   elsif BROWSER.eql?('safari')   
#       Capybara::Selenium::Driver.new(app, :browser => :safari)
#   elsif BROWSER.eql?('poltergeist') 
#       options = {js_errors: false}
#       Capybara::Poltergeist::Driver.new(app, options)
#   end
# end

    Capybara.configure do |config|
        #seleium    selenium_chrome     selenium_chrome_healess
        config.default_driver = :chrome #usa o chrome como browser de teste
        config.app_host = CONFIG['url_padrao']
        #config.app_host = 'https://automacaocombatista.herokuapp.com' #seta o site no qual sera efetuado o teste
        config.default_max_wait_time = 5 #caso o elemento não apareça na tela em 5 segundos ira falhar        
    end

    