class Genre 

  attr_accessor :name, :song, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, artist)
    Song.new(name, artist, self)
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def artists
    songs.collect {|song| song.artist}
  end
end 