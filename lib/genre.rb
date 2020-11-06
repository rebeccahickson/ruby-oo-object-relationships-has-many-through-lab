class Genre
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select { |song_name| song_name.genre == self }
  end

  def artists
    songs.map(&:artist)
  end
end
