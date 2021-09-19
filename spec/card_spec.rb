require 'rspec/autorun'
require_relative '../lib/card.rb'

=begin
    --- Notes ---
    - Describe is used to describe what is being tested
    - Describe creates an example testing group
    - Tests are known as examples
=end


# Step 1: Access RSpec and the describe method: RSpec.describe
# Step 2: Identify what you want to test: Card
# Step 3: Create a testing example group: do block
# Step 4: Use the 'it' method to write the test output: it "has a type"
# Step 5: Create a 'do block' with a desription of the behvorior of the thing you are going to be building. - No tech, just behavior
# Step 6: Logic comes in. Make your assumptions about what you are going to build and build it out: card = Card.new('Ace of Spades') 
# Step 7: Use the 'expect()' and pass an argument that you want to evaluate: card.type to equal Ace of Spades
RSpec.describe 'Card' do
    # Describe the expected behaivor of this thing you are about to build. 
    # Don't describe how it will be built, only what it does

    it "has a type" do
        # Make your first assumption - We assume we will have a card class, so we make an instance of it with the initial value of 'Ace of Spades'
        card = Card.new('Ace of Spades')
        # I expect card.type to equal Ace of Spades. eq is a Matcher
        expect(card.type).to eq('Ace of Spades') # I could also put equations here => expect(1 + 1).to eq(2)
    end
end



