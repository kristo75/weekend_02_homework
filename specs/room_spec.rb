require("minitest/autorun")
require_relative("../room")
require_relative("../song")
require_relative("../guest")

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new("Edinburgh")

    @song1 = Song.new("Wannabe")
    @song2 = Song.new("Power of Love")
    @song3 = Song.new("Take on me")

    @songs = [@song1, @song2, @song3]
    @guest1 = Guest.new("Jerry")

  end

  def test_room_has_name
    assert_equal("Edinburgh", @room1.name())
  end

  def test_room_has_guest
    assert_equal([], @room1.guests)
  end

  def test_check_in_guest
    @room1.check_in(@guest1)
    assert_equal([@guest1], @room1.guests.count)
  end

  def room_has_songs
    assert_equal(3, @room1.number_of_songs )
  end
end
