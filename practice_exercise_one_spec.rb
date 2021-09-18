# Submit the code to each question in the proper box. Please use the Code button on the toolbar (the curly braces with three dots inside) to format your code.

# Questions for this assignment
# Create an example group with a string argument of "math calculations".

# Inside the group, create an example with a string argument of "does basic math".

# Inside the example, write 4 mathematical assertions of your choice.

# The expect method should receive a valid mathematical expression (for example, 3 + 4 or 5 * 3).

# The eq method should compare the result fo the evaluation with the right answer.


RSpec.describe 'math calculations' do
    it 'does basic math' do
        expect(5 + 2).to eq(7)
        expect(4-3).to eq(1)
        expect(8*2).to eq(16)
        expect(10/2).to eq(5)
    end
end