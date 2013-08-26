require 'rails/railtie'

module Chops
  class Railtie < Rails::Railtie
    config.after_initialize do |app|
      app.config.paths.add 'app/view_objects', eager_load: true
    end

    initializer 'chops.setup_action_controller' do |app|
      ActiveSupport.on_load :action_controller do
        Chops.setup_action_controller self
      end
    end
  end
end
