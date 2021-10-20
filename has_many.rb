require 'pry'

class Song 
  attr_accessor :artist, :name, :genre #building the :artist creates the belongs to relationships for Song

  def initialize(name, genre)
    @name = name
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



binding.pry