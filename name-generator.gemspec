lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'name-generator/version'

Gem::Specification.new do |s|
  s.name    = 'name-generator'
  s.summary = 'Easily generate game-compatible names'
  s.version = NameGenerator::VERSION
  s.license = 'MIT'

  s.files      = Dir['lib/**/*.rb']
  s.test_files = Dir['spec/**']

  s.author  = 'Laust Rud Jacobsen'
  s.email   = 'laust@object.io'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
end
