RSpec.describe 'nested hooks' do
    before(:context) do
        puts 'OUTER Before context: runs 1st'
    end

    # All outer level befores are valid in inner level context. DOES NOT WORK THE OTHER WAY AROUND
    before(:example) do
        puts 'OUTER Before example'
    end

    it 'does basic math' do
        puts 'Outer it statement'
        expect(1 + 1).to eq(2)
    end

    context 'with condition A' do
        before(:context) do
            puts 'INNER Before context'
        end
    
        before(:example) do
            puts 'INNER Before example'
        end

        it 'does some more basic math' do
            puts 'INNER basic math it statement'
            expect(5 + 5).to eq(10)
        end

        it 'does some more basic math' do
            puts 'Second INNER basic math it statement'
            expect(5 * 5).to eq(25)
        end
    end
end