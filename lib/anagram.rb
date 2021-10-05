require 'pry'
#turn the word given into array of words and sort
#turn the array of words into array and sort 

class Anagram
    attr_accessor  :word

    def initialize(word)
        @word = word 
    end

    def match(arrayofwords)
        match = []
        
        arrayofwords.each do |word|
            if word.split("").sort == self.word.split("").sort
                match << word 
            else
                match 
            end
        end
        match
    end 

end


listen = Anagram.new("listen")
listen.match(%w(enlists google inlets banana))



