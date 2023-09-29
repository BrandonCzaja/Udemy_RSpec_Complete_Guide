require_relative '../lib/card.rb'

# RSpec module takes an argument and block of what we are testing
RSpec.describe Card do
  # let and let! is the best way to define variables. It isolates the variable to each test, but also allows you to modify it within the test (see 'has a rank that can change' test)
  let(:card) { Card.new("Ace", "Spades") }

  # 'it' blocks except an argument ("string") that describes the functionality of the tested class (Card)
  # Describe the "what" not the "how"
  it 'has a rank that can change' do
    expect(card.rank).to eq("Ace")
    card.rank = "Queen"
    expect(card.rank).to eq("Queen")
  end

  it 'has a suit' do
    expect(card.suit).to eq("Spades")
  end

  # To create a custom error message all you need to do is pass a second argument(string) to the #to method
  it 'has a custom error message' do
    comparison = 'Spade'
    expect(card.suit).to eq(comparison), "I expected #{comparison}, but I got #{card.suit}"
  end
end