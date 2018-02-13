# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'name_generator/version'

Gem::Specification.new do |s|
  s.name    = 'name-generator'
  s.summary = 'Easily generate game-compatible names'
  s.version = NameGenerator::VERSION
  s.license = 'MIT'

  s.files = [
    'lib/name_generator/main.rb',
    'lib/name_generator/version.rb',
    'lib/name_generator.rb',
    'lib/name-generator.rb',
    'Rakefile',
    'README.md',
    'Gemfile'
  ]
  s.test_files = [
    'spec/name_generator',
    'spec/spec_helper.rb'
  ]

  s.author  = 'Laust Rud Jacobsen'
  s.email   = 'laust@object.io'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rubocop'
end
