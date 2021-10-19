require 'pry'
class Song
    attr_accessor :artist, :title, :genre
    
    def initialize(title, genre)
        @title = title
        @genre = genre 
    end
end


class Artist
    attr_accessor :name
  
    def initialize(name)
      @name = name
      @songs = []
    end
  
    def add_song(song)
      @songs << song
      song.artist = self 
    end
  
    def songs
      @songs
    end
end

drake = Artist.new("Drake")
kiki = Song.new("In My Feelings", "hip-hop")
hotline = Song.new("Hotline Bling", "pop")

drake.add_song(kiki)
drake.add_song(hotline)

drake.songs


binding.pry