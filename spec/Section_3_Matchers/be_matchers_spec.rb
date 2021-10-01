# Checking for Truthiness

# There are only two falsy values in Ruby - False, Nil
# Everything else, including 0, '', [], etc are truthy


RSpec.describe 'be matchers' do
    it 'can test for truthiness' do
        expect(true).to be_truthy
        expect('Hello').to be_truthy
        expect(0).to be_truthy
        expect(1).to be_truthy
        expect(-1).to be_truthy
        expect(2.3).to be_truthy
        expect('').to be_truthy
        expect([]).to be_truthy
        expect({}).to be_truthy
        expect(:symbol).to be_truthy
    end

    it 'can test for falsiness' do
        expect(false).to be_falsy
        expect(nil).to be_falsy
    end

    it 'can test for nil' do
        expect(nil).to be_nil

        my_hash = {a: 5}
        # A hash key that doesn't exist has a nil value in Ruby
        expect(my_hash[:b]).to be_nil
    end

    describe '' do
        it {is_expected.to be_truthy}
    end
end