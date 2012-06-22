module Decore
  autoload :Infection, 'decore/infection'
  autoload :Proxy, 'decore/proxy'

  def initialize(component)
    @component = component
  end

  def component
    @component
  end
end
