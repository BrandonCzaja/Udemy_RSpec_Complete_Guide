# Allows me to pair a method with a given return value

RSpec.describe 'allow method review' do
    it 'can customize return value for methods on doubles' do
        calculator = double
        allow(calculator).to receive(:add).and_return(15) # Default value == nil
        expect(calculator.add).to eq(15)
    end

    it 'can mock one or more methods on a real object' do
        array = [1,2,3]
        # The returned value is arbitrary. :sum isn't actually the real sum method, it represents a method 
        allow(array).to receive(:sum).and_return(10) # the returned value can be anything I want

        expect(array.sum).to eq(10)
    end


    it 'can return multiple return values in sequence' do
        mock_array = double
        # First :c will be removed, then :b, then every other call will return nil
        allow(mock_array).to receive(:pop).and_return(:c,:b,nil)

        expect(mock_array.pop).to eq(:c)
        expect(mock_array.pop).to eq(:b)
        expect(mock_array.pop).to be_nil
        expect(mock_array.pop).to be_nil
    end
end