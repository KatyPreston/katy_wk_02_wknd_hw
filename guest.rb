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

  def pay_entry_fee(fee)
    @wallet -= fee
  end



end
