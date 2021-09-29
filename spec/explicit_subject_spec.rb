# Overriding the default 'subject' method value
# The advantage is to create custom instances

# Testing a native Ruby Hash
RSpec.describe Hash do
    # Whatever is returned from this block, is what 'subject' will evalutate to within an example
    # I can pass an argument to subject - typically a name or an identifier
    subject(:bob) do
        {
            a: 1,
            b: 2
        }
    end

    # By default, subject would equal Hash.new, but since we have the subject method defined above, we override the default
    it 'has two key/value pairs' do
        expect(subject.length).to eq(2)
        expect(bob.length).to eq(2)
    end

    # In nested examples, since subject is declared in the outer scope, it is available here as well
    describe 'nested example' do
        it 'has two key-value pairs' do
            expect(subject.length).to eq(2)
            expect(bob.length).to eq(2)
        end
    end

end