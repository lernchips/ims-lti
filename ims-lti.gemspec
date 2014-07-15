# coding: utf-8
# lib = File.expand_path('../lib', __FILE__)
# $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'ims-lti'
  spec.version       = '2.0.0.beta.1'
  spec.authors       = ['Instructure']
  spec.summary       = %q{Ruby library for creating IMS LTI tool providers and consumers}
  spec.homepage      = %q{http://github.com/instructure/ims-lti}
  spec.license       = 'MIT'

  spec.files         = Dir['{lib}/**/*'] + ['LICENSE.txt', 'README.md', 'Changelog.txt']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'json-ld', '~> 1.1.4'
  spec.add_dependency 'oauth', '~> 0.4.7'

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end