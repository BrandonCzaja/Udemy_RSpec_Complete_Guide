# Checks if an object has a given set of attributes along with their values

class ProfessionalWrestler
    # Accessible via reader methods
    attr_reader :name, :finishing_move

    def initialize(name, finishing_move)
        @name = name
        @finishing_move = finishing_move
    end
end


RSpec.describe 'have_attributes matcher' do
    # This new object will be subject
    describe ProfessionalWrestler.new('Stone Cold Steve Austin', 'Stunner') do
       it 'checks for object attributes and proper values' do
        # We pass a {} to the method. Key is the attribute, value is the value I am looking for
        # In Ruby, if the {} represents the last argument given to a method, the curly braces aren't required
        expect(subject).to have_attributes(name: 'Stone Cold Steve Austin') 
        expect(subject).to have_attributes(name: 'Stone Cold Steve Austin', finishing_move: 'Stunner') 
       end

       it {is_expected.to have_attributes(name: 'Stone Cold Steve Austin')}
       it {is_expected.to have_attributes(name: 'Stone Cold Steve Austin', finishing_move: 'Stunner')}
    end
end

=begin
    - Common reasons why these tests would fail
        - Spelling issues in the values
        - Case sensitivity
        - The methods are not public
=end

