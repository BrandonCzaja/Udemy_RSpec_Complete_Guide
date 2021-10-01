RSpec.describe 'equality matchers' do
    let(:a) {3.0}
    let(:b) {3}

    # eq
    describe 'eq matcher' do
        it 'tests for value, but ignores data type' do
            expect(a).to eq(3)
            expect(b).to eq(3.0)
            expect(a).to eq(b)
        end
    end


    # eql
    describe 'eql matcher' do
        it 'tests for value, AND data type' do
            expect(a).not_to eql(3)
            expect(b).not_to eql(3.0)
            expect(a).not_to eql(b)
        end
    end

    # equal: equal and 'be' are the exact same thing
    describe 'equal and be matcher' do
        let(:c) {[1,2,3]}
        let(:d) {[1,2,3]}
        let(:e) {c}

        it 'cares about object identity' do
            expect(c).to eq(d)
            expect(c).to eql(d)

            # expect(c).to equal(d) => This will fail. They are equal arrays, but different addresses in memory, different identity

            # This passes
            expect(c).to equal(e)
            expect(c).to be(e) # Same as the line above

            # not_to
            expect(c).not_to equal(d)
        end
    end
end