require 'active_support/core_ext/string/inflections'

module Decore
  module Infection
    def decorator
      decorator = "#{self.class.name}Decorator".constantize
      decorator.new(self)
    end

    def decorated?
      "#{self.class.name}Decorator".safe_constantize
    end
  end
end
