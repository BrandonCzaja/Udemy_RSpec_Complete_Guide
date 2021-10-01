# Allows me to check that all values in a collection fit a condition

RSpec.describe 'all matcher' do
    # This is fine, but rspec provides a better way
    it 'allows for aggregate checks' do
        [5,7,9].each do |val|
            expect(val).to be_odd
        end
    end

    it 'allows for aggregate checks' do
        expect([5,7,9]).to all(be_odd)
    end

    # All requires that every element matches the expectation
    # This would fail
    # it 'allows for aggregate checks' do
    #     expect([5,7,9, 14]).to all(be_odd)
    # end



    # Other examples
    it 'has other examples' do
        expect([5,7,9,11]).to all(be_odd)
        expect([2,4,6,8]).to all(be_even)
        expect([[], [], []]).to all(be_empty)
        expect([0,0]).to all(be_zero)

        expect([1,2,3,4,5,6,7,8,9]).to all(be < 10)
    end


    describe [5,7,9] do
        it {is_expected.to all(be_odd)}
        it {is_expected.to all(be < 10)}
    end
end