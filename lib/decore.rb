module Decore
  autoload :Infection, 'decore/infection'

  def initialize(component)
    @component = component
  end

  def component
    @component
  end
end
