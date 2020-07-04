ConnectBy::Engine.routes.draw do
  devise_for :users,
    class_name: "ConnectBy::User",
    module: :devise
end
