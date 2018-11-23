lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "jd/union/version"
require 'hashie'
require 'active_support/core_ext'

module JD
  module Union
    mattr_accessor :sandbox
    @@sandbox = false

    def self.gateways
      domain = self.sandbox? ? "jdsandbox" : "jd"
      {
        :site => "https://router.#{domain}.com/api",
        :authorize_url => "https://oauth.#{domain}.com/oauth/authorize",
        :token_url => "https://oauth.#{domain}.com/oauth/token"
      }
    end

    def self.sandbox?
      !!self.sandbox
    end

    autoload :Options, 'jd/union/service.rb'
    autoload :Params, 'jd/union/service.rb'
    autoload :Service, 'jd/union/service.rb'
    autoload :Response, 'jd/union/service.rb'
  end
end

require 'jd/rails/engine' if defined?(::Rails) && ::Rails::VERSION::MAJOR >= 3
