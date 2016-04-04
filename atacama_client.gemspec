# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'atacama_client/version'

Gem::Specification.new do |spec|
  spec.name          = "atacama_client"
  spec.version       = AtacamaClient::VERSION
  spec.authors       = ["Coyô Software"]
  spec.email         = ["ti@coyo.com.br"]

  spec.summary       = %q{Atacama API integration}
  spec.description   = %q{Atacama API integration}
  spec.homepage      = "www.coyo.com.br"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "byebug", "~> 8.2.2"

  spec.add_runtime_dependency "active_rest_client", "~> 1.2"
end
