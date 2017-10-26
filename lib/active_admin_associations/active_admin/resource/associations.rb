module ActiveAdminAssociations
  module ActiveAdmin
    class Resource
      module Associations
        def associations
          @associations ||= []
        end
      end
    end
  end
end
