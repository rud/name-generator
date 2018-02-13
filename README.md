# name-generator
[![Build Status](https://travis-ci.org/rud/name-generator.svg)](https://travis-ci.org/rud/name-generator)

Easily generate game-compatible names. This handy if you need a very large of slightly plausible fake names for things or places.

## Example usage

Add to your `Gemfile`:

``` ruby
gem 'name-generator'
```

Use in your code:

``` ruby
require 'name_generator'

generator = NameGenerator::Main.new
puts generator.next_name
# => "Foonqtar"

10.times { puts generator.next_name }
Ties
Hamiedla
Artoni
Folo
Acendro
Jula
Tuveqtpha
Gubouna
Axlesone
Oisova
```

For more examples see [the specs](spec/name_generator/main_spec.rb).
