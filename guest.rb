class Guest

  attr_reader(:name)
  attr_accessor(:wallet, :favourite_song)

  def initialize(name, wallet, favourite_song)
    @name = name
    @wallet = wallet
    @favourite_song = favourite_song
  end

  def can_afford_entry(room)
    @wallet >= room.entry_fee
  end

  def pay_entry_fee(fee)
    @wallet -= fee
  end

  def hears_favourite_song(song)
    if @favourite_song == song
      return "Whoop whoop! This song rocks!"
    end
  end



end
