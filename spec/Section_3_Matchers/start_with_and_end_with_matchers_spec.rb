# Check that a given object begins with or ends with one or more given values


RSpec.describe 'start_with and end_with matchers' do
    describe 'caterpillar' do
        it 'should check for a substring at the beginning or end' do
            expect(subject).to start_with('cat')
        end
    end

    # Tests are case sensitive, but I can get around it with case adjusters
    describe 'caterpillar' do
        it 'checks casing' do
            expect(subject).to start_with('Cat'.downcase)
        end

        it {is_expected.to start_with('cat')}
    end

    describe 'caterpillar' do
        it 'ends with' do
            expect(subject).to end_with('pillar')
        end

        it {is_expected.to end_with('pillar')}
    end


    describe [:a, :b, :c, :d] do
        it 'should check for elements at beginning or end of array' do
            expect(subject).to start_with(:a)
            expect(subject).to end_with(:d)
            expect(subject).to start_with(:a, :b, :c) # Order matters
        end


        it {is_expected.to start_with(:a,:b, :c)}
    end

end

# For strings it looks for a substring
# For arrays it looks for specific order of elements