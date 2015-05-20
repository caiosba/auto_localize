# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'auto_localize/version'

Gem::Specification.new do |spec|
  spec.name          = 'auto_localize'
  spec.version       = AutoLocalize::VERSION
  spec.authors       = ['Caio Almeida']
  spec.email         = ['caiosba@gmail.com']
  spec.description   = 'Machine-translates an application, by generating a config/locales/<target-language>.yml file from a config/locales/<source-language>.yml using Bing to translate strings from the source file automatically',
  spec.summary       = 'Machine-translates an application, by generating a config/locales/<target-language>.yml file from a config/locales/<source-language>.yml using Bing to translate strings from the source file automatically',
  spec.homepage      = 'https://github.com/caiosba/auto_localize'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'gem-release'
  
  spec.add_dependency 'bing_translator'
end
