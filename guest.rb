class Guest

attr_reader :name

  def initialize(name, favourite_song)
    @name = name
    @favourite_song = favourite_song
  end

  def name
    return @name
  end

  def favourite_song
    assert_equal("Epic", @guest.favourite_song_name)
end


end
