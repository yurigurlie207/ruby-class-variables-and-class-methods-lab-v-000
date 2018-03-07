class Song

  @@count = 0
  @@genre_count = 0
  @@artist_count = 0
  @@genres = []
  @@artists = []


  def initialize(name,artist,genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @genre = genre
    @artist = artist
    @name = name
  end

  def self.count
    @@count
  end

  # attribute accessors
  def name
    @name
  end

  def artist
    @artist
  end

  def genre
    @genre
  end

 # returns arrays
  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genreHash = {@@genres[0], 1}

    @@genres.each do |genre|
      @@genreHash.each do |genreH, count|
        if genre == genreH
          count = count + 1
        end
      end
    end

    @@genreHash
  end

  def self.artist_count
    artistHash = {}
  end

end
