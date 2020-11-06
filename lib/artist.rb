require 'pry'

class Artist
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
  end

  def songs
    Song.all.select { |song_name| song_name.artist == self }
  end

  def genres
    songs.map(&:genre)
  end
end
