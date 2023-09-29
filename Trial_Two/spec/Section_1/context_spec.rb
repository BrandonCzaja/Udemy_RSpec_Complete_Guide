RSpec.describe '#even?' do
  context 'with even number' do
    it 'should return true' do
      expect(4.even?).to eq(true)
    end
  end

  context 'with odd number' do
    it 'should return false' do
      expect(5.even?).to eq(false)
    end
  end
end


# Context is an alias for describe

# Context blocks are used to house conditional logic 
# that would make the tests tougher to read in a standard 'it' clause
# Key words to keep an eye out for (if, and, or, etc)


# It statements should be a matter of fact
# Describe / Context should be the unknowns, whens, and conditionals