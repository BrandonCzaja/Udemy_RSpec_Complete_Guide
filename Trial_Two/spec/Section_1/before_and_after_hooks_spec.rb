RSpec.describe 'before and after hooks' do
  before(:context) do
    puts 'Before Context'
  end

  after(:context) do
    puts 'After Context'
  end

  before do
    puts "Hello word, I ran before each test"
  end

  after do
    puts "After example"
  end

  it 'is just a random example' do
    expect(5 * 4).to eq(20)
  end

  it 'is just another random example' do
    expect(1 + 4).to eq(5)
  end
end

# Hooks are a moment in time during the execution of the test suite
# They are used to pause the testing and execute a block of code during the test lifecycle

# The 'before' hook enables us to run a code block BEFORE each test
# The 'after' hook enables us to run code AFTER each test - Note: it may look like it ran before the test but it actually runs after

# Hooks are good for resetting data between tests

# before/after(:example): Runs b/a each test in the describe block - without (:example) it is the default behavior
# before/after(:context): Runs ONCE b/a the block it is currently in - whether that's a context or describe block
# b/a(:context) is good for messaging when the tests start and finish