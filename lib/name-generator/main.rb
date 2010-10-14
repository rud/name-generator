require 'active_support/core_ext/array/random_access'
require 'active_support/core_ext/string/inflections'

# This is a ruby-rewrite of "namegen.py" by Laust Rud Jacobsen (2010).

# From the original source-file (http://www.ailis.de/~k/archives/28-Name-Generator.html)
#
# This class generates names in the quality of the planet names used in
# the classic game Elite. The algorithm used in this class comes from
# the Mote project (http://mote.sourceforge.net/)


module NameGenerator
  class Main

    def next_name syllables = random_syllable_count
      name = generate_name(syllables)
      until sensible_name?(name)
        name = generate_name(syllables)
      end
      name.titlecase
    end

    private
    def generate_name syllables
      name = (1...syllables).collect do
        digraphs.sample
      end
      name << (digraphs + trigraphs).sample

      name.join
    end

    def sensible_name? name
      name !=~ /.*[aeiou]{3}.*/i  # reject if at least three vowels in a row
    end

    def random_syllable_count
      [2, 3, 4].sample
    end

    def digraphs
      [
         "a", "ac", "ad", "ar", "as", "at", "ax", "ba", "bi", "bo", "ce", "ci",
        "co", "de", "di",  "e", "ed", "en", "es", "ex", "fa", "fo", "ga", "ge",
        "gi", "gu", "ha", "he", "in", "is", "it", "ju", "ka", "ky", "la", "le",
        "le", "lo", "mi", "mo", "na", "ne", "ne", "ni", "no",  "o", "ob", "oi",
        "ol", "on", "or", "or", "os", "ou", "pe", "pi", "po", "qt", "re", "ro",
        "sa", "se", "so", "ta", "te", "ti", "to", "tu", "ud", "um", "un", "us",
        "ut", "va", "ve", "ve", "za", "zi"
      ]
    end

    def trigraphs
      [
        "cla", "clu", "cra", "cre", "dre", "dro", "pha", "phi", "pho", "sha",
        "she", "sta", "stu", "tha", "the", "thi", "thy", "tri"
      ]
    end

  end
end
