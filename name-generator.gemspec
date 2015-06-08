require 'lib/name-generator.rb'

Gem::Specification.new do |s|
  s.name    = 'name-generator'
  s.summary = 'Easily generate game-compatible names'
  s.version = NameGenerator::VERSION::STRING

  s.files      = Dir['lib/**/*.rb']
  s.test_files = Dir['spec/**']

  s.author  = 'Laust Rud Jacobsen'
  s.email   = 'laust@object.io'

  s.add_dependency 'activesupport', '~> 3'
end
