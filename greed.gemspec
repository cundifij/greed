# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'greed/version'

Gem::Specification.new do |spec|
  spec.name          = "greed"
  spec.version       = Greed::VERSION
  spec.authors       = ["JC Grubbs"]
  spec.email         = ["jc.grubbs@devmynd.com"]
  spec.description   = %q{This gem implements the rules of the dice game greed.}
  spec.summary       = %q{This gem implements the rules of the dice game greed.}
  spec.homepage      = "http://github.com/thegrubbsian/greed"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "active_support", ">= 3.0.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
end
