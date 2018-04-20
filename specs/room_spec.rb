require("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../guest")
require_relative("../song")


class RoomTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Blondie", 9)
    @guest2 = Guest.new("Stevie", 7)
    @guest3 = Guest.new("Freddie", 20)

    @song1 = Song.new("The Frug")
    @song2 = Song.new("Mmm Bop")
    @song3 = Song.new("Sk8er Boi")

    @room = Room.new("Blue", 10, [@song1, @song2, @song3])
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

  def test_room_starts_off_empty
    @room.number_of_guests
    assert_equal(0, @room.guests.length)
  end

  def test_can_take_in_guest
    @room.check_in_guest(@guest1)
    assert_equal(1, @room.guests.length)
  end

  def test_can_check_out_guest
    @room.check_in_guest(@guest1)
    @room.check_in_guest(@guest2)
    @room.check_out(@guest2)
    assert_equal([@guest1], @room.guests)
  end

  def test_no_admittance_if_over_capacity
    10.times {@room.check_in_guest(@guest1)}
    assert_equal("You're too late to the party! Try another room.", @room.check_in_guest(@guest2))
  end


end
