# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'introduce/version'

Gem::Specification.new do |spec|
  spec.name          = "introduce"
  spec.version       = Introduce::VERSION
  spec.authors       = ["George Drummond"]
  spec.email         = ["georgedrummond@gmail.com"]

  spec.summary       = %q{API wrapper for Introduce (https://introduc.es)}
  spec.description   = %q{API wrapper for Introduce (https://introduc.es)}
  spec.homepage      = "https://github.com/introduce/ruby-sdk"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
