RSpec.describe 'nested hooks' do
  before(:context) do
    puts 'OUTER Before context'
  end

  before(:example) do
    puts "OUTER Before example"
  end

  it 'does basic math' do
    expect(1 + 1).to eq(2)
  end

  context 'with arbitrary testing condition' do
    before(:context) do
      puts 'INNER Before context'
    end
  
    before(:example) do
      puts "INNER Before example"
    end

    it 'does some more complex math' do
      expect(2 * 4).to eq(8)
    end

    it 'does even more complex math' do
      expect(10 % 2).to eq(0)
    end
  end

end

# NOTE: All OUTER level 'before' statements are valid for INNER level tests as well, not the other way around