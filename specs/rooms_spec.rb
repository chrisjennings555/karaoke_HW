require("minitest/autorun")
require('minitest/rg')
require_relative("../rooms")
require_relative("../guests")
require_relative("../songs")

class RoomTest < MiniTest::Test

  def setup

    @guest1 = Guest.new("Laura", "Diamonds")
    @guest2 = Guest.new("Jake", "American Pie")
    @guest3 = Guest.new("Borna", "Smells Like Teen Spirit")
    @song1 = Song.new("Diamonds")
    @song2 = Song.new("American Pie")

    guestlist = [@guest1, @guest2]
    songlibrary = [@song1, @song2]

    @room1 = Room.new("Room 1", guestlist, songlibrary)

  end

  def test_room_has_name
    assert_equal("Room 1", @room1.name)
  end

  def test_number_of_guests_on_guestlist
    assert_equal(2, @room1.guestlist_count)
  end

  def test_add_guest_to_guestlist
    @room1.add_guest_to_guestlist
    assert_equal(3, @room1.guestlist_count)
  end

  def test_remove_guest_from_guestlist
    @room1.remove_guest_from_guestlist
    assert_equal(1, @room1.guestlist_count)
  end



end