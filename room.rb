class Room

  attr_reader(:name, :capacity)
  attr_accessor(:number_of_guests, :song_list)

  def initialize(name, capacity, number_of_guests, song_list)
    @name = name
    @capacity = capacity
    @number_of_guests = []
    @song_list = song_list
  end

end
