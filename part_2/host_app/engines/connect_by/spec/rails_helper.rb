ENGINE_ROOT = Pathname.new(File.expand_path("..", __dir__))
ENV["RAILS_ENV"] = "test"
require "common_testing/shared_rails_helper"