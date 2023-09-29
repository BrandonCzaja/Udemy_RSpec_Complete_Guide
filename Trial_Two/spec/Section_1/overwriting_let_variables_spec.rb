class ProgrammingLanguage
  attr_reader :name

  def initialize(name = 'Ruby')
    @name = name
  end
end

RSpec.describe ProgrammingLanguage do
  let(:language) { ProgrammingLanguage.new("Python") }

  it 'should store the name of the language' do
    expect(language.name).to eq("Python")
  end

  context 'with no argument provided' do
    let(:language) { ProgrammingLanguage.new() } # Overrides the higher level definition
    it 'should use the default name - Ruby' do
      expect(language.name).to eq('Ruby')
    end
  end
end

# Anything defined in a higher-level block (:language) is accessable in a tighter scope ("context")
# But nothing defined in a tighter scope is available in a higher scope