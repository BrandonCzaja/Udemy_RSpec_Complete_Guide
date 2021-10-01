# Ruby Predicate Methods returns a boolean value
# The methods all end with a '?' - (not a tech requirement, more of a community standard)
# If you ever see a method with a '?' at the end, you know it returns boolean values

# Examples:
=begin
puts 0.zero?
puts 1.zero?
puts 2.even?
puts 3.even?

puts 2.odd?
puts 3.odd?

puts [].empty?

=end


RSpec.describe 'predicate methods and predicate matchers' do
    # This works but rspec has a shortcut
    it 'can be tested with Ruby methods' do
        result = 16 / 2
        expect(result.even?).to eq(true)
    end

    # RSpec shorthand - This is the same as above, but using rspec shorthand. This is better to use
    it 'can be tested with predicate matchers' do
        expect(16 / 2).to be_even
    end

    it 'is not even' do
        expect(15 / 2).not_to be_even
    end

    it 'is odd' do
        expect(15).to be_odd
    end

    it 'is empty' do
        expect([]).to be_empty
    end

    # subject shorthand
    describe 0 do
        it {is_expected.to be_zero}
    end
end