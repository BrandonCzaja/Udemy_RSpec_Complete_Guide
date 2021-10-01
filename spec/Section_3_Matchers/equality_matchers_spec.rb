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
end