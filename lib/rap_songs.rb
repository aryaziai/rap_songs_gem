
require_relative "../config/environment.rb"
# require "rap_songs/version"

module RapSongs
 class Song
 

  def random_song
   ["https://www.youtube.com/watch?v=ElOo0psAs3E",
    "https://www.youtube.com/watch?v=u7Fw8OHnJZM",
    "https://www.youtube.com/watch?v=mVFKMomXMOc",
    "https://www.youtube.com/watch?v=v5ybdpttu40",
    "https://www.youtube.com/watch?v=pmdI9YdLQ_o",
    "https://youtu.be/yL9bRzwk0Ds",
    "https://youtu.be/87VaeIKXV1s",
    "https://youtu.be/myrXQebr488",
    ].sample
  end

  def self.play
    song = Song.new
    song.open_in_browser
  end

  def open_in_browser
    Launchy.open(random_song)
  end

  # binding.pry
 end
end
