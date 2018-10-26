require("minitest/autorun")
require('minitest/rg')
require_relative("../songs")

class SongTest < MiniTest::Test

  def setup

    @song1 = Song.new("Diamonds")

  end

  def test_song_has_name
    expected = "Diamonds"
    actual = @song1.name
    assert_equal(expected, actual)
  end 

end
