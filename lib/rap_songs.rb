
require_relative "../config/environment.rb"
require "rap_songs/version"

module RapSongs
 class Song
 
#  RapSongs::Song.play

  def random_song
   ["IndigoChildRick - Vogue https://www.youtube.com/watch?v=ElOo0psAs3E",
    "Divine Council - Dirtbags in Distress https://www.youtube.com/watch?v=u7Fw8OHnJZM",
    "Sheck Wes - YKTS https://www.youtube.com/watch?v=mVFKMomXMOc",
    "Yung Bans - Partna in Crime https://www.youtube.com/watch?v=v5ybdpttu40",
    "Trippie Redd - Lil Wayne https://www.youtube.com/watch?v=pmdI9YdLQ_o",
    "Travis Scott - Skyfall ft. Young Thug - https://youtu.be/yL9bRzwk0Ds",
    "Madeintyo - Need Dat Pack - https://youtu.be/87VaeIKXV1s",
    "Kanye West 1997 Beat Tape - https://youtu.be/myrXQebr488",
    ].sample
  end

  def execute
  puts "\n\nHold Command + Press Link:\n"
  puts "#{random_song} \n\n\n"
  end

  def self.play
    song = Song.new
    song.execute
  end

  # binding.pry
 end
end
