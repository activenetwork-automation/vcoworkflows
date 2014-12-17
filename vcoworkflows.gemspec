# coding: utf-8
# rubocop:disable all
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vcoworkflows/version'

Gem::Specification.new do |spec|
  spec.name          = 'vcoworkflows'
  spec.version       = Vcoworkflows::VERSION
  spec.authors       = ['Gregory Ruiz-Ade']
  spec.email         = ['gkra@unnerving.org']
  spec.summary       = %q{vCO Workflows REST API Wrapper.}
  spec.description   = %q{vCO Workflows REST API Wrapper.}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_dependency 'thor'
  spec.add_dependency 'rest-client'

end
# rubocop:enable all
