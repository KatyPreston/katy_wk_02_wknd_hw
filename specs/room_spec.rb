require("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../guest")
require_relative("../song")


class RoomTest < MiniTest::Test

  def setup
    @song1 = Song.new("The Frug")
    @song2 = Song.new("Mmm Bop")
    @song3 = Song.new("Sk8er Boi")
    @room = Room.new("Blue", 10, ["Blondie", "Stevie"], [@song1, @song2, @song3])
  end

  def test_name_of_room
    assert_equal("Blue", @room.name)
  end

  def test_capacity
    assert_equal(10, @room.capacity)
  end

  def test_can_play_song__song_is_in_list
    assert_equal("Doh Ray Me", @room.play_song(@song1))
  end

  def test_can_play_song__song_not_in_list
    assert_equal("Song unavailable", @room.play_song("Mamma Mia"))
  end

  def test_can_add_song_to_list
    @room.add_song("Help I'm Alive")
    assert_equal(4, @room.song_list.length)
  end

  

end
