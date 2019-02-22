class Artist
  attr_accessor :name, :songs
  @@songs = []
  
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    @@songs << song
    song.artist = self
  end

  def songs
  	@songs
  end

  def add_song_by_name(name)
	song = Song.new(name)
	@songs << song
	@@songs << song
	song.artist = self
  end

  def name
  	@name
  end

  def self.song_count
    @@songs.count
  end

end