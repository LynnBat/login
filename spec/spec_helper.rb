# frozen_string_literal: true

require 'dotenv/load'
require 'pry'
require 'faker'
require 'capybara/rspec'
require 'selenium/webdriver'

Dir['./spec/helpers/**/*.rb'].each { |file| require file }
Dir['./spec/support/**/*.rb'].each { |file| require file }

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    driver_path: File.join(Dir.pwd, 'vendor', 'chromedriver'),
    desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome
  )
end

Capybara.configure do |config|
  config.default_driver = ENV['BROWSER'].to_sym

  config.app_host = ENV['APP_HOST']
end

RSpec.configure do |config|
  config.include LoginHelper

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.append_after { Capybara.reset_sessions! }
end
