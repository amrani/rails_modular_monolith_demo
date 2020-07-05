module ConnectBy
  class << self
    def configure
      yield Engine.config
    end
  end

  class Engine < ::Rails::Engine
    isolate_namespace ConnectBy

    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_bot
      g.factory_bot dir: "spec/factories"
    end
  end
end
