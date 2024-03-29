# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'api/utils/version'

Gem::Specification.new do |spec|
  spec.name          = "api-utils"
  spec.version       = Api::Utils::VERSION
  spec.authors       = ["Ingo Claro"]
  spec.email         = ["miclaro@gmail.com"]
  spec.description   = %q{utilities for APIs}
  spec.summary       = %q{utilities for APIs}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", "~> 5.0.8"
  spec.add_development_dependency "minitest-english", "~> 0.1.0"
end
