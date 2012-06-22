require 'spec_helper'

describe Decore::Routes do
  let :component do
    DecoratedComponent.new
  end

  let :decorator do
    DecoratedComponentDecorator.new(component)
  end

  it 'provides access to rails routes' do
    decorator.should respond_to :routes
  end
end
