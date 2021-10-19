require 'pry'
class Pokemon
    attr_accessor :pokemon_name, :pokemon_type, :pokemon_moves, :trainer

    @pokedex = []

    def initialize(pokemon_name, pokemon_type)
        @pokedex = self 
        @pokemon_moves = pokemon_moves
        @pokemon_type = pokemon_type
        @pokemon_name = pokemon_name
        @pokemon_moves = []
    end


 

end

class Moves
    attr_accessor :pokemon_type, :moves

    def initialize(pokemon_type, moves)
        @pokemon_type = pokemon_type
        @moves = moves
    end

end

class Trainer
    attr_accessor :pokemon, :trainer_name

    def initialize(trainer_name)
        @trainer_name = trainer_name
        @pokemon = [] 
    end

    def add_pokemon(pokemon)
        @pokemon << pokemon
        pokemon.trainer = self  #the added pokemon belongs to instance of the trainer 
    end

    def pokemon_list
        @pokemon.map do |pokemon|
             "#{pokemon.pokemon_name}:  #{pokemon.pokemon_type}"
          end
    end
end


