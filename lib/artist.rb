class Artist 
  
  attr_accessor :name

  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.each {|song| song.artist == self}
  end
  
  def add_song(song)
    song.artist = self
    song = Song.new(song)
  end  
  
end