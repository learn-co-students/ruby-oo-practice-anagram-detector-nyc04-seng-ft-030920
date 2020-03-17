# Your code goes here!


require 'pry'
class Anagram 

    attr_accessor :word 
    def initialize(word)
     @word = word
    end
    def match(worded)
     
      worded.select do |args| 
          args.split("").sort == @word.split("").sort
          
         
      end
    end 
end 

