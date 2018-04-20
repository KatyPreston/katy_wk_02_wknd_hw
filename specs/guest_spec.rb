require("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../guest")
require_relative("../song")


class GuestTest < MiniTest::Test

  def setup
    @song1 = Song.new("The Frug")
    @song2 = Song.new("Mmm Bop")
    @song3 = Song.new("Sk8er Boi")
    @song4 = Song.new("We Are Monkeys")

    @room = Room.new("Blue", 10, [@song1, @song2, @song3])

    @guest = Guest.new("Blondie", 9, @song3)
    @guest2 = Guest.new("Jenny", 7, @song4)
  end

  def test_name_of_guest
    assert_equal("Blondie", @guest.name)
  end

  def test_how_much_in_wallet
    assert_equal(9, @guest.wallet)
  end

  def test_can_afford_entry
    assert_equal(true, @guest.can_afford_entry(@room))
  end


  def test_pays_entry_fee
    @guest.pay_entry_fee(@room.entry_fee)
    assert_equal(4, @guest.wallet)
  end

  def test_favourite_song
    assert_equal("Whoop whoop! This song rocks!", @guest.hears_favourite_song(@song3))
  end

  def test_not_favourite_song
    assert_equal(nil, @guest.hears_favourite_song(@song1))
  end

end
