require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")
require_relative("../song")
require_relative("../room")

class RoomTest

  def setup
    @room = Room.new("Blue", 10, [], ["The Frug", "Mmm Bop", "Sk8er Boi"])
  end

  def test_name_of_room
    assert_equal("Blue", @room.name)
  end
  # 
  # def test_capacity
  #   assert_equal(10, @room.capacity)
  # end

end
