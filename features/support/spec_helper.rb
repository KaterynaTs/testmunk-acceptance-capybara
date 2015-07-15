require 'capybara/cucumber'
require 'capybara/rspec'
require 'capybara/dsl'
require 'capybara/poltergeist'

Capybara.register_driver :poltergeist do |app|
    Capybara::Poltergeist::Driver.new(app, {:js_errors => false})
end

Capybara.configure do |c|
    c.javascript_driver = :poltergeist
    c.default_driver = :poltergeist
end

#Capybara.default_driver = :selenium

Capybara.default_wait_time = 30

Before do |scenario|
    #page.driver.browser.manage.window.maximize
end
