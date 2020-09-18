class Artist
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    @songs << song
  end

  def self.find_or_create_by_name(name)
    self.all.detect { |artist| }
  end
  
  def print_songs #instance method iterates through @songs of an instance of Artist
    @songs.each {|song| puts song.name}
  end
  
end