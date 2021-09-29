=begin
Create a new ​array_spec.rb​ file.

Create an example group using ​RSpec.describe​ with an argument of ​Array​.

This represent Ruby's native Array class.

Add an example with a docstring of your choice.

Write an assertion that tests that the initial length of ​subject​ is 0. 

In the same example, invoke the ​push​ method to add an element to the ​subject​ array.

Write another assertion to check that the length of the array is now 1.




Questions for this assignment
Paste your complete code below.

What does the subject helper method return?
An instance of the described class

Why is better to pass a class argument to the describe method instead of a string with the class name?
If passed as a string the subject helper won't be available.

=end

RSpec.describe Array do
    it 'should be able to add items' do
      expect(subject.length).to eq(0)
      subject.push('Some value')
      expect(subject.length).to eq(1)
    end
  end