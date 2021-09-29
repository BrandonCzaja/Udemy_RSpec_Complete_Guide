# described class is a RSpec helper method

class King
    attr_reader :name

    def initialize(name)
        @name = name
    end
end


RSpec.describe King do
    # subject {King.new('Zevi')}
    # let(:ziggy) {King.new('Ziggy')}

    # described_class is referencing whatever class we are testing
    subject {described_class.new('Zevi')}
    let(:ziggy) {described_class.new('Ziggy')}


    it 'represents a great person' do
        expect(subject.name).to eq('Zevi')
    end

end

=begin
    Think of this scenario. Your 'King' Class is a really big and bulky class with 30+ instances of King.new. Then the project manager says 'I want to change the Class name to 'Royal'. Well now you need to change every instance of King.new one by one.

    This is where the 'described_class' helper method comes in handy. Instead of instanciating a new instance of the class by the class name, using described_class allows you the flexibility to change the class name, and the name of the tested class, once and only once, instead of for each instance.

    This is much more stable and solid coding practices
=end