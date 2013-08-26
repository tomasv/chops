module Chops
  module ViewHelpers
    def helpers
      Chops::ViewContext.controller.view_context
    end
    alias :h :helpers

    def localize(*args)
      helpers.localize(*args)
    end
    alias :l :localize
  end
end
