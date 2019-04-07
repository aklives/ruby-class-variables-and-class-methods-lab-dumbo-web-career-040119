class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0  # song count
  @@artists = []
  @@genres = []
  
  
  def initialize(name, artist, genre)
    
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1
    @@artists << artist 
    @@genres << genre
  
  end 
  
  def self.count
    @@count
  end
  
  def self.genres 
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  
  def genre_count
    @@genre_hash = {}
    @@genres.each do |genre|
      if @@genres_hash[genre]
        @@genres_hash[genre] += 1
      else
        @@genres_hash[genre] = 1
      end
    end
  end
  
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1 
      else 
        artist_count[artist] = 1 
      end
    end
  end
    
end
  