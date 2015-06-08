# name-generator
[![Build Status](https://travis-ci.org/rud/name-generator.svg)](https://travis-ci.org/rud/name-generator)

Easily generate game-compatible names. This handy if you need a very large of slightly plausible fake names for things or places.

Example usage:

Add to your `Gemfile`:
``` ruby
gem 'name-generator'
```

Use in your code:
```
generator = NameGenerator::Main.new
puts generator.next_name
# => "Foonqtar"
```
