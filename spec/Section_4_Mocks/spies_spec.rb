# Spies are an alternate form of test doubles
# The difference is that they have a slightly different pattern


# Doubles - We would create a double and give it a message. We expected it to receive the message before we invoked the method that would send the message

# Doubles - We assert that a message will be received BEFORE the method is invoked that would send the message
# Spies - We assert that a message has been received AFTER the method has been invoked

# Advantages of Spies
    # - They automatically watch all the messages that are sent to an object, even if we don't explicitly tell it to watch for that message



RSpec.describe 'spies' do
    let(:animal) {spy('animal')}

    it 'confirms that a message has been received' do

        # Testing with Spies
        animal.eat_food
        # The animal has already received the :eat_food method, therefore we use have_received
        expect(animal).to have_received(:eat_food)

        # Testing with Doubles
        # expect(animal).to receive(:eat_food)
        # animal.eat_food
    end

    it 'resets between examples' do
        expect(animal).not_to have_received(:eat_food)
    end


    it 'retains the same functionality of a regular double' do
        animal.eat_food
        animal.eat_food
        animal.eat_food("Sushi")
        expect(animal).to have_received(:eat_food).exactly(3).times
        expect(animal).to have_received(:eat_food).at_least(2).times
        expect(animal).to have_received(:eat_food).with("Sushi")
        expect(animal).to have_received(:eat_food).once.with('Sushi')

    end
end