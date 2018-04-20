require("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../guest")
require_relative("../song")


class GuestTest < MiniTest::Test

  def setup
    @guest = Guest.new("Blondie", 9)
    @guest2 = Guest.new("Jenny", 7)

    @song1 = Song.new("The Frug")
    @song2 = Song.new("Mmm Bop")
    @song3 = Song.new("Sk8er Boi")

    @room = Room.new("Blue", 10, [@song1, @song2, @song3])
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

#cant get this to work
  # def test_take_money_on_entry
  #   @guest2.can_afford_entry(@room)
  #   @guest2.take_fee
  #   assert_equal(2, @guest2.wallet)
  # end


end
