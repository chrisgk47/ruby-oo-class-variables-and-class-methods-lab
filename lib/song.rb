require 'pry'
class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    
    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_hash = {}
        @@genres.each do |genre_key|
            genre_hash[genre_key] = @@genres.count(genre_key)
        end
        genre_hash
    end

    def self.artist_count
        artist_hash = {}
        @@artists.each do |artist_key|
            artist_hash[artist_key] = @@artists.count(artist_key)
        end
        artist_hash
    end
    
end

