require("minitest/autorun")
require('minitest/rg')
require_relative("../cdplayer")


class CDplayerTest < MiniTest::Test

  def setup
    @cdplayer = CDplayer.new()
  end

  def test_cd_player_empty
    assert_equal(nil, @cdplayer)
  end


end
