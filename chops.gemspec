# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chops/version'

Gem::Specification.new do |spec|
  spec.name          = "chops"
  spec.version       = Chops::VERSION
  spec.authors       = ["Tomas Varneckas"]
  spec.email         = ["t.varneckas@gmail.com"]
  spec.description   = %q{Chops simplifies making view objects in Rails by making the view context easily available through a mixin.}
  spec.summary       = %q{Chops simplifies making view objects in Rails.}
  spec.homepage      = "https://github.com/tomasv/chops"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'request_store', '~> 1.0.0'
  spec.add_dependency 'rails', '~> 3.2.0'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
