# Remember that classes should be in a separate file
class ProgrammingLanguage
    attr_reader :name
    # name = <value> is called a default value - same as JS
    def initialize(name = 'Ruby')
        @name = name
    end
end

RSpec.describe ProgrammingLanguage do
    let(:language) {ProgrammingLanguage.new('Python')}

    it 'should store the name of the language' do
        expect(language.name).to eq('Python')
    end

    context 'with no initialization argument provided' do
        # By declaring :language again, the default value in the initialize method will be used
        let(:language) {ProgrammingLanguage.new}

        it 'should default to "Ruby" as the name' do
            expect(language.name).to eq('Ruby')
        end
    end
end