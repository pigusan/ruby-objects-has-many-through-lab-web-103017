class Artist

  attr_reader :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end


  def add_song(song_instance)
    song_instance.artist = self
    @songs << song_instance
  end

  def genres
    @songs.collect do |song|
      song.genre
    end
  end

  def songs
    @songs
  end

end
