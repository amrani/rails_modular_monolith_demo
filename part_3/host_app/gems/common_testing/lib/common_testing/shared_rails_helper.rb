# frozen_string_literal: true

# ENGINE_ROOT = File.join(File.dirname(__FILE__), "../")
require "./spec/spec_helper"
require "factory_bot_rails"
ENV["RAILS_ENV"] ||= "test"

root = defined?(ENGINE_ROOT) ? Pathname.new(ENGINE_ROOT) : Rails.root
require File.expand_path("#{root}/spec/dummy/config/environment", __FILE__)

abort("The Rails environment is running in production mode!") if Rails.env.production?
require "rspec/rails"

# factories are defined in the engine.
FactoryBot.definition_file_paths << File.join(ENGINE_ROOT, "spec/factories")
FactoryBot.factories.clear
FactoryBot.find_definitions

begin
  ActiveRecord::Migrator.migrations_paths = File.join(ENGINE_ROOT, "spec/dummy/db/migrate")
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  puts e.to_s.strip
  exit 1
end
RSpec.configure do |config|
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
  config.include FactoryBot::Syntax::Methods
end
