class Room
  attr_reader :name, :guestlist, :songlibrary
  # attr_accessor :songlibrary

  def initialize (name, guestlist, songlibrary)
    @name = name
    @guestlist = guestlist
    @songlibrary = songlibrary
  end

  def guestlist_count
    @guestlist.count
  end

  def add_guest_to_guestlist(guest)
    @guestlist << guest
  end

  def remove_guest_from_guestlist(guest)
    @guestlist.delete(guest)
  end

  def do_you_have_song?(song)
    @songlibrary.any? { |tune| tune == song }
  end

  def add_song_to_songlibrary(song)
    @songlibrary << song
  end

  def guest_favourite_song_reaction(guest, song)
    result = @songlibrary.find {|tune| tune == song}

    if guest.fav_song == result
      return guest.guest_fav_song_celebration
    end

  end


end
