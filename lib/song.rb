class Song

  attr_accessor :name, :artist, :genre

  ALL = []

  def initialize(name="", artist="", genre="")
    @name = name
    @artist = artist
    @genre = genre
    ALL << self
  end

  def self.all
    ALL
  end

  def artist
    @artist
  end

end