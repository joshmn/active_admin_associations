module ActiveAdminAssociable
  module ResourceDSL

    private

    def has_many(name, options = {})
      config.associables << ActiveAdminAssociable::Associable.new(name, options)
    end

    def associable_menu(name = "Associables", options = {})
      return nil if config.associables.empty?
      resource_associations = config.associables
      current_namespace = config.namespace.name
      config.add_action_item(name, :except => [:index, :new]) do
        dropdown_menu name do
          resource_associations.each do |association|
            item association.label, [current_namespace, association.name, "q[#{resource.model_name.param_key}_id_equals]".to_sym => resource.to_param]
          end
        end
      end
    end

  end
end
