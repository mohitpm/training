class Song
  attr_accessor :name, :album, :artist
  def initialize(name, album, artist)
    @name = name
    @album = album
    @artist = artist
  end
  def to_s
    return " Name :- #{song.name}, Album :- #{song.album}, Artist :- #{song.artist} "
  end
end
class BollywoodSong < Song
  def initialize(name, album, artist, language)
    super(name, album, artist)
    @language = language
  end
end

class Playlist
  attr_accessor :name, :songs
  def initialize(name, songs)
    @name = name
    @songs = songs
  end
  def display
#    @songs.each { |song| puts song.to_s}
  end
  def count
    @songs.length
  end
end

song1 = Song.new("occean","100 words", "mohit" )
song2 = Song.new("loves on sun", "sun", "mohit" )
songs = [song1, song2]

playlist = Playlist.new("mohit",songs)
puts "Number of songs in Playlist #{playlist.name} = #{playlist.count} "
playlist.display
