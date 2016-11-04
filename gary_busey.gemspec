# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gary_busey/version'

Gem::Specification.new do |spec|
  spec.name          = "gary_busey"
  spec.version       = GaryBusey::VERSION
  spec.authors       = ["Derek Victory"]
  spec.email         = ["derek.victory@gmail.com"]

  spec.summary       = %q{A fake payment gateway where you never know what you are gonna get.}
  spec.description   = %q{A fake payment gateway where you never know what you are gonna get.}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faker"
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
