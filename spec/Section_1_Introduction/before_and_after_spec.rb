# If I use RSpec.describe I don't need to require it, but I have to use rpsec to run the file

# A Hook is a moment in time during a test suit execution. During these momens we can tell rspec to run additional code



RSpec.describe 'before and after hooks' do

    # runs once before the context it is in (the describe block level)
    before(:context) do
        puts 'Before context'
    end

    # runs once before the context it is in (the describe block level)
    after(:context) do
        puts 'After context: Test is complete'
    end
    
    # runs before each example
    before(:example) do
        puts 'Before each example'
    end

    # It won't look right in the terminal, but it is
    after(:example) do
        puts 'After each example'
    end

    it 'is just a random example' do
        expect(5 * 4).to eq(20)
    end

    it 'is just another random example' do
        expect(5 + 4).to eq(9)
    end
end