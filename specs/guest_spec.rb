require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")
require_relative("../song")


class GuestTest < MiniTest::Test

  def setup
    @guest = Guest.new("Blondie")
  end

  def test_name_of_guest
    assert_equal("Blondie", @guest.name)
  end



end
