class Room

  attr_reader(:name, :capacity, :entry_fee)
  attr_accessor(:guests, :song_list, :till)

  def initialize(name, capacity, song_list)
    @name = name
    @capacity = capacity
    @guests = []
    @song_list = song_list
    @entry_fee = 5
    @till = 0
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

  def number_of_guests
    @guests.count
  end

  def check_in_guest(guest_name)
    @guests.push(guest_name) unless @guests.count >= @capacity
    if @guests.count >= @capacity
      return "You're too late to the party! Try another room."
    end
  end

  def check_out(guest_name)
    @guests.delete(guest_name)
  end

  def collect_fee(guest)
    @till += @entry_fee
  end


end
