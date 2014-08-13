# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'snowshoe_ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "snowshoe_ruby"
  spec.version       = SnowshoeRuby::VERSION
  spec.authors       = ["IggyIgner", "dotfury"]
  spec.email         = ["jonathan.igner@gmail.com"]
  spec.summary       = %q{Ruby SDK for SnowShoe}
  spec.description   = %q{SDK allowing developers to easily integrate SnowShoe stamps into their app.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.add_runtime_dependency "oauth", ["= 0.4.7"]

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
