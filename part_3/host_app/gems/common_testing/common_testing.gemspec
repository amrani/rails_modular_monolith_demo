# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

rails_version = File.read(File.join(__dir__, "../../.rails-version"))

Gem::Specification.new do |spec|
  spec.name        = "common_testing"
  spec.version     = "1.0.0"
  spec.authors     = ["David Amrani"]
  spec.summary     = "Shared setup for RSpec."
  spec.description = "Shared setup for RSpec."
  spec.license     = "MIT"

  spec.files = Dir["{config,lib}/**/*", "Rakefile"]
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", rails_version
  spec.add_dependency "rspec-rails", "~> 4.0.0"
  spec.add_dependency "factory_bot_rails", "~> 5.2.0"
end
