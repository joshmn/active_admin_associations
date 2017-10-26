module ActiveAdminAssociations
  class Association

    attr_reader :name, :options
    def initialize(name, options = {})
      @name = name
      @options = options.symbolize_keys
      set_default_options
    end

    def label
      @options[:as]
    end

    private

    def set_default_options
      @options[:as] ||= name.to_s.classify.constantize.model_name.plural
    end
    
  end
end
