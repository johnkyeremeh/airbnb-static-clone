require 'pry'
class Dog
    attr_accessor :dog, :person

    @@all = [] #class variable 
    
    def self.all  #class method  
        @@all
    end



    def initialize(dog) #instant method 
        self.class.all << self #self.class == Person.all
        @dog = dog
    end

end


class Person
    attr_accessor :person
    @@all = []

    def self.all 
        @@all 
    end

    def initialize(person)
        self.class.all << self
        @person = person 
    end


end

fido = Dog.new("fido")
snoopy = Dog.new("snoopy")
lassie = Dog.new("lassie")

adele = Person.new("adele")
alan = Person.new("alan")

binding.pry
