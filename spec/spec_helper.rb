#require 'rubygems'
#if you're using bundle you do not need that line
require 'spork'

Spork.prefork do
  ENV["RAILS_ENV"] ||= 'test'
  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'
  require 'rspec/autorun'

  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

  RSpec.configure do |config|
    config.mock_with :rspec
   # config.fixture_path = "#{::Rails.root}/spec/fixtures"
   #fixtures are very complicated, use FactoryGirl or Mocks
   #http://martinfowler.com/articles/mocksArentStubs.html
   #https://github.com/thoughtbot/factory_girl

    config.use_transactional_fixtures = false
    #transactions take too long, use either Factory Girl or Mocks

    #this is good if you want to test some methods against application_controller.rb
    #DOC - https://www.relishapp.com/rspec/rspec-rails/docs/controller-specs/anonymous-controller
    config.infer_base_class_for_anonymous_controllers = false
  end


end

Spork.each_run do

end

