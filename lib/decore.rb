module Decore
  autoload :Helpers, 'decore/helpers'
  autoload :Infection, 'decore/infection'
  autoload :Proxy, 'decore/proxy'
  autoload :Routes, 'decore/routes'

  def initialize(component)
    @component = component
  end

  def component
    @component
  end
end
