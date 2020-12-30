# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'services/version'

Gem::Specification.new do |spec|
  spec.name          = "services_base"
  spec.version       = Services::VERSION
  spec.authors       = ["Carl Mercier"]
  spec.email         = ["carl@varagesale.com"]

  spec.summary       = %q{Simple skeleton for implementing consistent Service Objects and Micro-Services in Ruby}
  spec.description   = %q{Simple skeleton for implementing consistent Service Objects and Micro-Services in Ruby}
  spec.homepage      = "https://github.com/varagesale/services_base"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 12.3.3"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"

end
