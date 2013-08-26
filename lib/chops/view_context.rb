module Chops
  module ViewContext
    def self.controller=(controller)
      RequestStore.store[:chops_current_controller] = controller
    end

    def self.controller
      RequestStore.store[:chops_current_controller]
    end
  end
end
