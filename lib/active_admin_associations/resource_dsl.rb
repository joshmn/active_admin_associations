module ActiveAdminAssociations
  module ResourceDSL

    private

    def has_many(name, options = {})
      config.associations << ActiveAdminAssociations::Association.new(name, options)
    end

    def association_items
      return nil if config.associations.empty?
      resource_associations = config.associations
      current_namespace = config.namespace.name
      config.add_action_item("Associations", :except => [:index, :new]) do
        dropdown_menu "Associations" do
          resource_associations.each do |association|
            item association.label, [current_namespace, association.name, "q[#{resource.model_name.param_key}_id_equals]".to_sym => resource.to_param] }
          end
        end
      end
    end

  end
end