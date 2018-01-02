# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'format_restricter_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "format_restricter_rails"
  spec.version       = FormatRestricterRails::VERSION
  spec.authors       = ["roberts"]
  spec.email         = ["roberts@corlewsolutions.com"]

  spec.summary       = "A ruby gem that stops rails controllers from processing chosen formats."
  spec.description   = "Restrict the formats that your Rails controller actions are allowed to process"
  spec.homepage      = "https://github.com/corlewsolutions/format_restricter_rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec-rails", "~> 3.7.2"
  spec.add_development_dependency "pry", "~> 0.11.3"
  spec.add_development_dependency "sqlite3", "~> 1.3.11"

  spec.add_dependency "rails", ">= 4"
end