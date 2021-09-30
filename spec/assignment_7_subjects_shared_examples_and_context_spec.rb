# By default, what will subject equal?

An instance of the class being described

# How do you define a custom subject? Provide a code example.

    subject(:bob) do
        {
            a: 1,
            b: 2
        }
    end

# How does the described_class helper method work? What is the advantage of using it over writing the class name out?

It references the class that is being tested. By using described_class instead of the class name, the class name only has to be changed once and all instances of it will be updated.



# Write an RSpec test for an array with 2 elements.

# Declare the subject to be [1, 2].

# Write an example that uses expect(subject) to test whether the array is equal to [1, 2].

# Write an example that uses the one-liner is_expected syntax.

# Which do you prefer?

RSpec.describe Array do
subject {[1,2]}
 
it 'has a length of two' do
    expect(subject).to eq([1,2])
end
 
it {is_expected.to eq([1,2])}
 
end 

# What's the difference between include_examples and include_context?

inclued_example is used to test a common characteristics among all test cases, such as a shared length

include_context is used to share common functionality among different describe blocks, such as helper methods or let keywords