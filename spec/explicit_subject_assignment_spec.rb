=begin
Create a new ​array_2_spec.rb​ file.

Create an example group using ​RSpec.describe​ with an argument of ​Array​.

Invoke the ​subject​ method outside of any example.

Give the subject a name of ​:sally.

Inside the block, declare a 2-element array with bracket syntax.

Add an example that tests that the ​subject​ has a length of 2. 

Invoke the ​pop method to remove an element from the ​subject​ array. 

In the same example, write another assertion to check that the length of the array is now 1.

In a second, separate example, write an assertion to confirm that ​sally​ is equal to the original array.

Questions for this assignment
Paste your complete code below.
=end

RSpec.describe Array do
    subject(:sally) {[1,2]}

    it 'has a length of 2' do
        expect(subject.length).to eq(2)
        subject.pop
        expect(subject.length).to eq(1)
    end

    it 'is the same as the original array' do
        expect(sally.length).to eq(2)
    end
end