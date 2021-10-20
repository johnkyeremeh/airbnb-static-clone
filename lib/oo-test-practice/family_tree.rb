require 'pry'
class Family
    attr_accessor :family_name, :slogan

    def initialize(family_name, slogan)
        @family_name = family_name
        @slogan = slogan
        @person = []
    end

    def add_person(person)
        @person << person
        person.family = self  
    end

    def known_family
        @person.map do |person|
            person.person_name
         end
    end

end



class Person
    attr_accessor :person_name, :person_weapon, :family

    @@all = []

    def initialize(person_name, person_weapon)
        @person_name = person_name
        @person_weapon = person_weapon
        @@all << self
        @food = []
    end

    def add_food(food)
        @food << food 
        food.person = self 
    end

    def known_moves
        @food.map do |food|
            food.fav_food
         end
    end



end



class Food 

    attr_accessor :fav_food, :person

    @@all = []

    def initialize(fav_food)
        @fav_food = fav_food
        @@all << self 
    end


end

binding.pry

