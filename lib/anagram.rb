require 'pry'
class Anagram
attr_accessor :word
    def initialize(word)
        @word = word
    end

    def split_sort
        word.split(//).sort
    end
    def match(list)
        list.select {|word| word.split(//).sort == split_sort}
    end
end
