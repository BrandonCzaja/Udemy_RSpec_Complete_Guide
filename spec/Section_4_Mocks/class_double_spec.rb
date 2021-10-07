# Used to mimic class methods - Mock the class itself, not the instances

class Deck
    # Self refers to the class itself, not the instances of it
    # It means it is class method
    def self.build

    end
end



# Lets say I am building a card game. 
class CardGame
    # Make sure the I can read :cards
    attr_reader :cards

    # Use a Deck Class, with the method build. Assign it to an instance variable
    def start
        # Since I am not doing Deck.new.build, I am building the class itself, not an instance of it
        @cards = Deck.build # as_stubbed_const is what changes the calls from the Deck class to the double
    end
end


RSpec.describe CardGame do
    it 'can only implement class methods that are defined on a class' do
        # As_stubbed_const changes all calls from the Class to the double
        # If the othe class isn't made yet, you can pass it as a string ("Deck")
        deck_class = class_double(Deck, build: ["Ace", "Queen"]).as_stubbed_const

        expect(deck_class).to receive(:build)
        subject.start
        expect(subject.cards).to eq(['Ace', 'Queen'])
    end
end