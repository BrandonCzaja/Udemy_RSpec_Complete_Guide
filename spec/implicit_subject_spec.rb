### SUBJECT METHOD ###

# Reducing Boilerplate code in specs: - The setup code

# Testing a native Ruby Hash
RSpec.describe Hash do
    # let(:my_hash) {{}} ===> This line is actually not required. RSpec has a method called 'subject'. 

    it 'should start off empty' do
        # puts subject # Hash
        # puts subject.class # {}

        expect(subject.length).to eq(0)
        subject[:some_key] = "Some value"
        expect(subject.length).to eq(1)
    end

    it 'is isolated between examples' do
        expect(subject.length).to eq(0)
    end
end

# Whatever class is passed into 'describe', RSpec instanciates an object from it. A.K.A. Hash.new || let(:subject) {Hash.new}

# This is useful when a class can be instanciated with the 'new' keyword and with no additional arguments.
# If your class is more involved, it takes more setup


# 'subject' acts like the 'like' keyword. It lazily loads (only when it is needed)