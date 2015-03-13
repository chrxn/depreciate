# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'depreciate/version'

Gem::Specification.new do |spec|
  spec.name          = "depreciate"
  spec.version       = Depreciate::VERSION
  spec.authors       = ["chrxn"]
  spec.email         = ["chrxin@gmail.com"]

  if spec.respond_to?(:metadata)
  end

  spec.summary       = %q{An asset depreciation library}
  spec.description   = %q{A simple ruby gem to calculate current asset value by various methods.}
  spec.homepage      = "http://github.com/chrxn/depreciate"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
