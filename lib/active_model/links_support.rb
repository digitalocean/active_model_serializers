module ActiveModel
  module LinksSupport

    def links_key
      @options[:links_key].try(:to_sym) || :links
    end

    def include_links(hash)
      hash[links_key] = @options[:links] if @options.has_key?(:links)
    end

  end
end
