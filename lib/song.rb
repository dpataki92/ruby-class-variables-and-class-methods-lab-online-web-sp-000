class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize
    @@count += 1
    self.genres
    self.artists
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres << :genre if @@genres.include?(:genre) == false
    @@genres
  end

  def self.artists
    @@artists << :artist if @@artists.include?(:artist) == false
    @@artists
  end

  def self.genre_count
    g_counter = {}
    @@genres.each do |genre|
      g_counter[genre] == nil ? g_counter[genre] = 1 : g_counter[genre] += 1
    end
    g_counter
  end

  def self.genre_count
    a_counter = {}
    @@artists.each do |artist|
      a_counter[artist] == nil ? a_counter[artist] = 1 : a_counter[artist] += 1
    end
    a_counter
  end
end
