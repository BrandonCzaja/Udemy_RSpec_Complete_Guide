# Allows you to create your own assertions and custom conditions


# I am intentionally having this file fail to see the better way to have 'satisfy' return an error message
RSpec.describe 'satisfy matcher' do
    # subject{'racecar'} 
    subject{'racecars'}

    # Checking if a given string is a palindrome
    it 'is a palindrome' do
        # satisfy returns a boolean value 
        # value in the satisfy block is the word 'racecar'
        expect(subject).to satisfy {|value| value == value.reverse }
    end

    # You should always pass a string to satisfy - The errors will be clearer
    it 'can accept a custom error message' do
        # The satisfy matcher block must return a boolean
        # value is subject defined above
        expect(subject).to satisfy('be a palindrome') do |value|
            value == value.reverse
        end
    end
end