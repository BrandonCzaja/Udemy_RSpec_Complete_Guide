class Card
  # attr_reader is the same as defining a method with def (read only)
  # att_accessor allows you to read and write values
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end
