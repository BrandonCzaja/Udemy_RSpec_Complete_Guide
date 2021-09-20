# Error 1: uninitialized constant Card
class Card
    # Error 3: undefined method 'type' for Card => The error is in the expect(card.type), so I return the value of the @type instance variable
    attr_reader :rank, :suit

    # Error 2: wrong number of arguments (given 1, expected 0) => After step 1 the class still had not been initialized, this solved the wrong number of arguments error
    def initialize (rank, suit)
        # Error 4: expected "Ace of Spades", got: nil => Every instance of Card will have a type equal to the argument
        # @type = type  # => =>Old answer PreRefactoring on Sec 1.15
        @rank = rank # Refactoring 
        @suit = suit # Refactoring
    end
end