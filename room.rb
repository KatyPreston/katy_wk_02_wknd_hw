class Room

  attr_reader(:name, :capacity)
  attr_accessor(:number_of_guests, :song_list)

  def initialize(name, capacity, number_of_guests, song_list)
    @name = name
    @capacity = capacity
    @number_of_guests = []
    @song_list = song_list
  end


  def play_song(song_title)
    for song in @song_list
      if song_title == song
        return "Doh Ray Me"
      else
        return "Song unavailable"
      end
    end
  end


  def add_song(song)
    @song_list.push(song)
  end

end
