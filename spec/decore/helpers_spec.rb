require 'spec_helper'

describe Decore::Helpers do
  let :component do
    DecoratedComponent.new
  end

  let :decorator do
    DecoratedComponentDecorator.new(component)
  end

  it 'provides access to rails helpers' do
    decorator.should respond_to :helpers
  end
end
