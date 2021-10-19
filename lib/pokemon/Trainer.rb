class Trainer
    attr_accessor :pokemon, :trainer_name

    def initialize(trainer_name)
        @trainer_name = trainer_name
        @pokemon = [] 
    end

    def add_pokemon(pokemon)
        @pokemon << pokemon
        pokemon.trainer_name = self  #the added pokemon belongs to instance of the trainer 
    end

    def pokemon_list
        @pokemon.collect do |pokemon|
            puts "#{pokemon.pokemon_name}:  #{pokemon.pokemon_type}"
          end
    end

end

binding.pry