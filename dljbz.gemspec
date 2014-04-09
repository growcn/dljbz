# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dljbz/version'

Gem::Specification.new do |spec|
  spec.name          = "dljbz"
  spec.version       = Dljbz::VERSION
  spec.authors       = ["John Chen"]
  spec.email         = ["cgg5207@sina.com"]
  spec.summary       = %q{Wrapper for dlj.bz URL Shortener API }
  spec.description   = %q{Small library for dlj.bz URL Shortener API}
  spec.homepage      = "http://github.com/growcn/dljbz"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_dependency "httparty"
  spec.add_dependency(%q<json>, [">= 1.4.6"])  
end
