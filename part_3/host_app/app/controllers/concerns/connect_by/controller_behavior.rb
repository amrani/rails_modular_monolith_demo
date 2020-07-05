module ConnectBy
  module ControllerBehavior
    extend ActiveSupport::Concern

    included do
      protect_from_forgery with: :exception
    end

    protected
      def some_useful_method
      end
  end
end
