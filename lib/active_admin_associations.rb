require 'active_admin'
require 'active_admin_associations/association'
require 'active_admin_associations/resource_dsl'
require 'active_admin_associations/active_admin/resource/associations'

require "active_admin_associations/version"

module ActiveAdminAssociations
  module Rails
    class Engine < ::Rails::Engine
      config.after_initialize do
		ActiveAdmin::ResourceDSL.send(:include, ActiveAdminAssociations::ActiveAdmin::ResourceDSL)
		ActiveAdmin::Resource.send(:include, ActiveAdminAssociations::ActiveAdmin::Resource::Associations)
      end
    end
  end
end