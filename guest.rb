class Guest

  attr_reader(:name)
  attr_accessor(:wallet)

  def initialize(name, wallet)
    @name = name
    @wallet = wallet
  end

  def can_afford_entry(room)
    @wallet >= room.entry_fee
  end


#cant get this to work
  # def take_fee
  #   if can_afford_entry(room) == true
  #     return @wallet -= 5
  #   end
  # end


end
