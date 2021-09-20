require 'rspec/autorun'
require_relative '../lib/context.rb'

=begin
    --- Notes ---
    - Contex is used to group like examples
    - If you have 'if statement esk' type logic in your 'it' statements, you should nest the complexity within another describe block, inside your original describe block
        - It helps with organization
=end

# If you are testing an instance method, convention is to use a #, if you are testing a class, use a .
describe '#even? method' do
    # These two lines would work, but it has conditionals attached to, so avoid doing it this way if possible
    # it 'should return true if num is even'
    # it 'should return false if num is dd'



    # When to use Nested Describe Blocks: If an example with the 'it' method has to use if, when, contains, given this condition, you are describing to much in the 'it' statement.
        # - All criteria for the 'it' statement to work should be in the 'describe'. The 'it' should be a simple matter of fact
    # When reading this, start at the top level describe, then move to these. "Even? method, with even number" and "Even? method, with odd number"
    context 'with even number' do
        it 'should return true' do
            expect(4.even?).to eq(true)
        end
    end

    # Context and Describe are the same(symantics is the only difference). It gives the context in which the original describe is operating
    context 'with odd number' do
        it 'should return false' do
            expect(5.even?).to eq(false)
        end
    end

end