require 'rspec/autorun'
require_relative '../lib/card.rb'

=begin
    --- Notes ---
    - Describe is used to describe what is being tested
    - Describe creates an example testing group
    - Tests are known as examples
    - When writing 'it' statements, describe what it should be doing, not how it is done. Behavioral not technical
    - Hooks (before) are used to run a block of code at some point during the tests: Before, In Between, After, etc
    - Hooks (specifically the before hook), will run BEFORE EACH test example
    - Variables declared in Hook must be an instance variable(@). Local variables don't persist to the next test example
    - You should always write your tests with the idea that they can run independently from each other and in a random order
    - The 'let' method is the best way to remove duplication ########################
=end

=begin
    --- Steps ---
    - Step 1: Access RSpec and the describe method: RSpec.describe
    - Step 2: Identify what you want to test: Card
    - Step 3: Create a testing example group: do block
    - Step 4: Use the 'it' method to write the test output: it "has a rank && it has a suit"
    - Step 5: Create a 'do block' with a desription of the behvorior of the thing you are going to be building. - No tech, just behavior
    - Step 6: Logic comes in. Make your assumptions about what you are going to build and build it out: card = Card.new('Ace of Spades') 
    - Step 7: Use the 'expect()' and pass an argument that you want to evaluate: card.type to equal Ace of Spades
=end


=begin
    --- Reduce Duplication ---
    - Use Hooks
        - 'before' block. Must use @ for instances of variable names
    - Ruby Helper Methods: The describe block is just a normal ruby block, anything can be done in it
=end

RSpec.describe Card do
    # Removing Duplication with the 'let' method
    # 'let' method is from rspec. It takes an argument as a symbol(:)(but when I reference it later in the tests I just use card). That variable is automatically created by rpec. The block to the right of 'let' ({Card.new...}) is the value of the symbol
    # Advantages of the 'let' method
        # - Between each example the block will be evaluated separately each time. This isolates tests from each other
        # - Within a single example, card represents the exact same object, meaning that I can reassign it within the test example
        # - Lazy loading: The card variable isn't created until card is referenced later in the code. Imagine having 100 tests, but only the last 2 used card. There is no need to make the card variable until those last two tests. If I used the 'before' hook, card would be made for each of those test, even though it wasn't used

    # If you must have card created before each test, which is rare, you can use let! and it will act like the 'before' method
    let(:card) {Card.new('Ace', 'Spades')}


    # Removing Duplication with a Ruby Helper Method
    # def card
    #     Card.new('Ace', 'Spades')
    # end

    # Removing Duplication with the 'before' hook
    # If I use the before block, I have to add @ to all instances of card. Took it off for Ruby Helper Method
    # before do
    #     @card = Card.new('Ace', 'Spades') # Instanciating a new card for each test
    # end

    # Direction update: The card will now have a rank and a suit
    it "has a rank" do
        expect(card.rank).to eq('Ace') # If variable is an instance variable I must call it as such
    end

    it "has a suit" do
        expect(card.suit).to eq('Spades') # If variable is an instance variable I must call it as such
    end
end


=begin
    - You must work one test at a time
    - Get the first error, fix it, then get the next error
    - Errors are good, as long as you are getting new errors you are making progress


    - Steps:
        - Error 1: uninitialized constant Card -> Create Card Class
        - Error 2: wrong number of arguments (given X, expected Y) => I have not initialized the class with the correct amount of arguments
        - Error 3: undefined method '<method_name>' for Card => The error is in the expect(card.<method>), so I return the value of the @<method> instance variable
        - Error 4: expected "Ace of Spades", got: nil => Every instance of Card will have a type equal to the argument
            - This was an earlier error before additional project directions and refactoring
        - Once you get all greens, you then start to refactor your code
=end

