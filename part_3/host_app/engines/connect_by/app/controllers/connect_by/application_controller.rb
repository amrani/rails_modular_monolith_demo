module ConnectBy
  class ApplicationController < ConnectBy.application_controller.constantize
    raise "Must include ConnectBy::ControllerBehavior" unless self < ConnectBy::ControllerBehavior

    raise "Must implement some_useful_method" unless instance_methods.include?(:some_useful_method)
  end
end
