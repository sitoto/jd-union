# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jd/union/version'

Gem::Specification.new do |spec|
  spec.name          = "jd-union"
  spec.version       = JD::Union::VERSION
  spec.authors       = ["sitoto"]
  spec.email         = ["huang.gadela@gmail.com"]
  spec.description   = %q{a simple ruby implementation of JDUnion API}
  spec.summary       = %q{a simple ruby implementation of TDUnion API}
  spec.homepage      = "https://github.com/sitoto/jd-union"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "hashie", ['>= 1.2','< 4']
  spec.add_dependency "activesupport", ['>= 3.2','< 6']
  spec.add_dependency "rest-client", "~> 2.0.2"
  spec.add_dependency "omniauth", '~> 1.2'
  spec.add_dependency "omniauth-oauth2", '~> 1.5'

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake"
end
