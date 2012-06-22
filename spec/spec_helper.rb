# dependencies
require 'rubygems'
require 'bundler/setup'

# keep clean requires
$:.unshift File.expand_path('../../', __FILE__)

# load decore itself
require 'decore'

# common use components
class UndecoratedComponent
  include Decore::Infection
end

class DecoratedComponent
  include Decore::Infection

  def first_name
    'Gabriel'
  end

  def last_name
    'Sobrinho'
  end
end

# common use decorators
class DecoratedComponentDecorator
  include Decore
  include Decore::Helpers
  include Decore::Routes

  def full_name
    [component.first_name, component.last_name].join(' ')
  end
end

class DecoratedComponentProxyDecorator
  include Decore
  include Decore::Proxy

  def full_name
    [first_name, last_name].join(' ')
  end
end

# We do not really need rails loaded to test integration with
# helpers and routes since this api is stable on rails.
module Rails
  def self.application
    @application ||= Application.new
  end

  class Application
    def routes
      'rails routes'
    end

    def helpers
      'rails helpers'
    end
  end
end
