# Checks if an object includes something else, such as a key/value pair(hash), substring(string), value(array)
# A lot more versetile than contains_exactly matcher


RSpec.describe 'include matcher' do
    # String looking for substrings
    describe 'hot chocolate' do
        it 'checks for substring inclusion' do
            expect(subject).to include('hot')
            expect(subject).to include('hoco')
            expect(subject).to include('late')
        end

        it {is_expected.to include('choc')}
    end

    # Array looking for values
    describe [10,20,30] do
        it 'checks for inclusion in the array, regardless of order' do
            expect(subject).to include(20)
            expect(subject).to include(10,30)
        end

        it {is_expected.to include(20,30,10)}
    end


    # Hash - RSpec has some issues identifying Hashes. The easiest way to fix this is use this: ({})
    describe ({a: 2, b: 4}) do
        it 'checks for a single key existance' do
            expect(subject).to include(:a)
            expect(subject).to include(:a, :b)
            expect(subject).to include(:b, :a)
        end

        it 'checks for key/value pair' do
            expect(subject).to include(a: 2)
        end

        it {is_expected.to include(:b)}
        it{is_expected.to include(b: 4)}
    end
end