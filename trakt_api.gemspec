# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'trakt_api/version'

Gem::Specification.new do |spec|
  spec.name          = 'trakt_api'
  spec.version       = TraktApi::VERSION
  spec.authors       = ['Krzysztof Wawer']
  spec.email         = ['krzysztof.wawer@gmail.com']
  spec.description   = %q{Ruby client for trakt.tv API}
  spec.summary       = %q{Ruby client for trakt.tv API}
  spec.homepage      = %q{http://github.com/wafcio/trakt_api}
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'service_api', '~> 0.1.0'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.1.0'
  spec.add_development_dependency 'coveralls', '>= 0.7'
  spec.add_development_dependency 'awesome_print', '~> 1.6.0'
end
