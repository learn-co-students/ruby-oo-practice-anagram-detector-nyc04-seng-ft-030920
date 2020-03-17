require 'pry'

class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(list_of_words)
        matched_words = []

        split_words = list_of_words.map { |word|
            word.split("")
        }

        matched_words = split_words.select { |split_word|
            self.word.split("").sort == split_word.sort
        }

        matched_words = matched_words.map { |matched_word|
            matched_word.join
        }

    end
    
    # listen = Anagram.new("listen")
    # listen.match(%w(enlists google inlets silent banana))
    # listen.match(%w(enlists google banana))
    # binding.pry

    # ["enlists", "google", "inlets", "banana"]
    # map over the array of words that are passed in
    # split each one and compare it self

end