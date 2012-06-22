require 'spec_helper'

describe Decore::Helpers do
  let :component do
    DecoratedComponent.new
  end

  let :decorator do
    DecoratedComponentDecorator.new(component)
  end

  it 'provides access to rails helpers' do
    decorator.helpers.should eq 'rails helpers'
  end
end
