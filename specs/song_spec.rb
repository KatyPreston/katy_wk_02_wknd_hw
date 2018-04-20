require("minitest/autorun")
require("minitest/rg")
require_relative("../song")

class SongTest < MiniTest::Test

  def setup
    @song = Song.new("The Frug")
  end


    def test_name_of_song
      assert_equal("The Frug", @song.title)
    end

end
