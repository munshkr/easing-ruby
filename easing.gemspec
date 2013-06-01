# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'easing/version'

Gem::Specification.new do |spec|
  spec.name          = 'easing'
  spec.version       = Easing::VERSION
  spec.authors       = ['Damián Silvani']
  spec.email         = ['munshkr@gmail.com']
  spec.description   = %q{Collection of common easing functions for Ruby}
  spec.summary       = %q{A port of known Robert Penner's easing functions for
                          Ruby, implemented both in pure-Ruby and with FFI}
  spec.homepage      = 'http://munshkr.github.io/easing-ruby'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'minitest', '~> 5.0.2'
end
