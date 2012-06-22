require 'spec_helper'

describe Decore::Proxy do
  let :component do
    DecoratedComponent.new
  end

  let :decorator do
    DecoratedComponentProxyDecorator.new(component)
  end

  it 'handles #respond_to?' do
    decorator.should respond_to :first_name
    decorator.should respond_to :last_name
    decorator.should respond_to :full_name
  end

  it 'handles #method_missing' do
    decorator.first_name.should eq 'Gabriel'
    decorator.last_name.should eq 'Sobrinho'
    decorator.full_name.should eq 'Gabriel Sobrinho'
  end
end
