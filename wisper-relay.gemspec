# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wisper/relay/version'

Gem::Specification.new do |spec|
  spec.name          = "wisper-relay"
  spec.version       = Wisper::Relay::VERSION
  spec.authors       = ["Kris Leech"]
  spec.email         = ["kris.leech@gmail.com"]
  spec.summary       = "Provides relaying of messages to external system, typically a queue."
  spec.description   = "Provides relaying of messages to external system, typically a queue."
  spec.homepage      = "https://github.com/krisleech/wisper-relay"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'wisper', '2.0.0.rc1'
end
