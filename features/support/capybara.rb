require "capybara/cucumber"
require "selenium-webdriver"

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 30



chrome_bin = ENV.fetch('GOOGLE_CHROME_SHIM', nil)

chrome_opts = chrome_bin ? { "chromeOptions" => { "binary" => chrome_bin } } : {}

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(
     app,
     browser: :chrome,
     desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(chrome_opts)
  )
end

Capybara.javascript_driver = :chrome

