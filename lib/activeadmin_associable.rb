require 'active_admin'
require 'activeadmin_associable/associable'
require 'activeadmin_associable/resource_dsl'
require 'activeadmin_associable/active_admin/resource/associations'

require 'activeadmin_associable/version'

module ActiveAdminAssociable
  module Rails
    class Engine < ::Rails::Engine
      config.after_initialize do
        ::ActiveAdmin::ResourceDSL.send(:include, ActiveAdminAssociable::ResourceDSL)
        ::ActiveAdmin::Resource.send(:include, ActiveAdminAssociable::ActiveAdmin::Resource::Associations)
      end
    end
  end
end