$:.push File.expand_path("lib", __dir__)

require "connect_by/version"

rails_version = File.read(File.join(__dir__, "../../.rails-version"))

Gem::Specification.new do |spec|
  spec.name        = "connect_by"
  spec.version     = ConnectBy::VERSION
  spec.authors     = ["David Amrani"]
  spec.summary     = "User Authentication"
  spec.description = "User Authentication"
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "Rakefile"]

  spec.add_dependency "rails", rails_version
  spec.add_dependency "devise", "~> 4.7.1"
  spec.add_dependency "pg", "~> 1.2.3"
  spec.add_dependency "bcrypt", "3.1.13"

  spec.add_development_dependency "pg"
  spec.add_development_dependency "common_testing"
end
