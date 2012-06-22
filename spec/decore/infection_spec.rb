require 'spec_helper'

describe Decore::Infection do
  describe 'decorated component' do
    let :component do
      DecoratedComponent.new
    end

    it 'asserts the decorator existence' do
      component.should be_decorated
    end

    it 'instantiates the decorator' do
      component.decorator.should be_an_instance_of DecoratedComponentDecorator
    end
  end

  describe 'undecorated component' do
    let :component do
      UndecoratedComponent.new
    end

    it 'do not asserts the decorator existence' do
      component.should_not be_decorated
    end

    it 'do not instantiates the decorator' do
      expect { component.decorator }.to raise_error(NameError, /uninitialized constant UndecoratedComponentDecorator/)
    end
  end
end
