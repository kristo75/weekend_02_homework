require("minitest/autorun")
require_relative("../song")

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("Secret Smile")
    @song2 = Song.new("Epic")
  end

  def test_song_has_name
    assert_equal("Secret Smile", @song1.song_name())
  end
end
