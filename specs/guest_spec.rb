require("minitest/autorun")
require_relative("../guest")
require_relative("../song")

class GuestTest < MiniTest::Test

  def setup
    @song1 = Song.new("Epic")
    @guest1 = Guest.new("Jerry")

  end

  def test_guest_has_name
      assert_equal("Jerry", @guest1.name())
    end

    def test_guest_has_favourite_song
      assert_equal("Epic", @guest1.favourite_song)
end

end
