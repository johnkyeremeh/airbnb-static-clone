require 'pry'
class Trainer 
	attr_accessor :name, :level, :pokemon

	def initialize(name, level) 
        @name = name
        @level = level
        @pokemon  = []  #A player has many pokemon and pokemon belong to a player
    end

    def add_pokemon(pokemon)
        @pokemon << pokemon
        pokemon.trainer = self 
    end
end

class Pokemon 
	attr_accessor :name, :type, :trainer

    def initialize(name, type)
	    @name  = name 
        @type = type
    end
end 


binding.pry

