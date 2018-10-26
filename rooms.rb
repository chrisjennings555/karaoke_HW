class Room
  attr_reader :name, :guestlist, :songlibrary

  def initialize (name, guestlist, songlibrary)
    @name = name
    @guestlist = guestlist
    @songlibrary = songlibrary
  end

  def guestlist_count
    @guestlist.count
  end

  def add_guest_to_guestlist
    @guestlist << @guest3
  end

  def remove_guest_from_guestlist
    guestlist.delete(@guest1)
  end

end
