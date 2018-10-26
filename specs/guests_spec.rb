require("minitest/autorun")
require('minitest/rg')
require_relative("../songs")
require_relative("../guests")


class GuestsTest < MiniTest::Test

  def setup

    @guest1 = Guest.new("Laura", "Diamonds")
    @song1 = Song.new("Diamonds")

  end


  def test_guest_has_name
    assert_equal("Laura", @guest1.name)
  end

  def test_guest_has_favourite_song
    assert_equal("Diamonds", @guest1.fav_song)
  end

  def test_guest_celebrates_fav_song
    assert_equal("Yasss", @guest1.guest_fav_song_celebration)
  end


end
