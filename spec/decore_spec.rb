require 'spec_helper'

describe Decore do
  let :component do
    DecoratedComponent.new
  end

  let :decorator do
    DecoratedComponentDecorator.new(component)
  end

  it 'decorates the component' do
    decorator.full_name.should eq 'Gabriel Sobrinho'
  end
end
