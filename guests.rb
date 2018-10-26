class Guest

  attr_reader :name, :fav_song

  def initialize (name, fav_song)
    @name = name
    @fav_song = fav_song
  end


  def guest_fav_song_celebration
    "Yasss"
  end
  
end
