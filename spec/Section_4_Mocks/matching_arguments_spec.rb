# Customizing the return value of a mocked method

# array.first - returns the first index of the array
# Use 'irb' in the terminal to test this code
=begin
    arr = [1,2,3]
    arr.first  ---> 1
    arr.first(1) ---> [1] => when passing args you say how many indexes you want returned
    arr.first(2) ---> [1,2]
    arr.first(3) ---> [1,2,3]
    arr.first(100) ---> [1,2,3] => No error thrown
=end


RSpec.describe 'matching arguments' do
    it 'can return different values depending on the argument' do
        three_element_array = double 

        # These four lines replicate the 'first' method for arrays
        allow(three_element_array).to receive(:first).with(no_args).and_return(1)
        allow(three_element_array).to receive(:first).with(1).and_return([1])
        allow(three_element_array).to receive(:first).with(2).and_return([1,2])
        allow(three_element_array).to receive(:first).with(be >= 3).and_return([1,2,3])


        expect(three_element_array.first).to eq(1)
        expect(three_element_array.first(1)).to eq([1])
        expect(three_element_array.first(2)).to eq([1,2])
        expect(three_element_array.first(3)).to eq([1,2,3])
        expect(three_element_array.first(100)).to eq([1,2,3])
    end
end