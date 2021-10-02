require 'pry'

class Person

    attr_accessor :name

    def initialize(name = nil) 
        @name = name
    end
end

john = Person.new
john.name 


class Dog

    attr_accessor :name, :breed

    def initialize(name, breed = "MUTT") 
        @name = name
        @breed = breed
    end

end

fido = Dog.new("Fido", "Cat")
fido.name
binding.pry
