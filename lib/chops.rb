require 'chops/version'

require 'chops/view_context'
require 'chops/view_helpers'
require 'chops/railtie'

module Chops
  def self.setup_action_controller(base)
    base.class_eval do
      before_filter do |controller|
        Chops::ViewContext.controller = controller
      end
    end
  end
end
