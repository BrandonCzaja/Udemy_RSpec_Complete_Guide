# Checks for the inverse of a matcher

RSpec.describe 'not_to method' do
    it 'checks for the inverse of a matcher' do
        expect(5).not_to eq(10)
        expect([1,2,3]).not_to equal([1,2,3]) # Equal checks for identity of the array in memory
        
        # Predicate methods generally end with a '?' but here I can remove the '?' and add 'be_'
        expect(10).not_to be_odd # Predicate method, returns boolean. 
        expect([1,2,3]).not_to be_empty # Predicate method, returns boolean. 

        expect(nil).not_to be_truthy # Nil and False are the only falsey objects in Ruby

        expect('Philadelphia').not_to start_with('car')
        expect('Philadelphia').not_to end_with('city')

        expect(5).not_to respond_to(:length) # Respond_to checks if the expected value responds to a method

        expect([:a, :b, :c]).not_to include(:d)

        # When using the raise_error, you should be generic unless you know exactly what error will be raised. 
        # To be generic, don't pass an argument to the method
        # Remember that with the raise_error method, you should use {} with expect so that rspec doesn't crash
        expect{11 / 3}.not_to raise_error
    end
end