# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'snowshoe/version'

Gem::Specification.new do |spec|
  spec.name          = "snowshoe"
  spec.version       = Snowshoe::VERSION
  spec.summary       = %q{Ruby API Client for Snowshoe}
  spec.description   = %q{Authenticate stamps from the Snowshoe API}
  spec.license       = "MIT"
  spec.authors       = ["Snowshoe","Iggy Igner", "Philipe Navarro"]
  spec.email         = ["techteam@snowshoestamp.com"]
  spec.homepage      = "http://snowshoestamp.com"

  spec.files         = `git ls-files -z`.split("\x0")
  # spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency 'oauth', '>= 0.4'
end
