# Checks that an array includes a specific predetermined set of elements
# Doesn't concern itself with the oder, just that they exist

RSpec.describe 'contain exactly matcher' do
    subject {[1,2,3]}

    describe 'long form syntax' do
        it 'should check for the presence of all elements' do
            expect(subject).to contain_exactly(1,2,3)
            expect(subject).to contain_exactly(3,2,1)
            expect(subject).to contain_exactly(2,1,3)

            # expect(subject).to contain_exactly(1,2) # Fails - Missing 3
            # expect(subject).to contain_exactly(1,2,3,4) # Fails - Subject doesn't contain 4
        end

        it {is_expected.to contain_exactly(1,2,3)}
        it {is_expected.to contain_exactly(3,2,1)}
        it {is_expected.to contain_exactly(2,1,3)}
    end
end


# Order doesn't matter, only that the exact elements exist, and only those elements
# When you want to check the order as well, use the 'eq' method instead