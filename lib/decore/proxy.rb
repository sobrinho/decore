module Decore
  module Proxy
    def method_missing(method, *arguments, &block)
      component.send(method, *arguments, &block)
    end

    def respond_to?(method, include_private = false)
      super || component.respond_to?(method, include_private)
    end
  end
end
