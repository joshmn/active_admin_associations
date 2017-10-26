module ActiveAdminAssociable
  module ActiveAdmin
    class Resource
      module Associables
        def associables
          @associables ||= []
        end
      end
    end
  end
end
