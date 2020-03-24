require 'pry'

class Anagram

    attr_accessor :word

    def initialize(word)
        @word = word
    end

    def match(string)
        anagram = []
        string.each do |word|
            if word.split(//).sort == @word.split(//).sort
                anagram << word
            end
        end
        return anagram
    end
end
