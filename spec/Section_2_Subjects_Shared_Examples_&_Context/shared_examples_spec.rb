# Reducing Duplication among different describe blocks by using common tests

=begin
    - Concept
    - I want to write a few different specs for Native Classes: Array, String, Hash
    - I want to define my own new class similar to the Native Classses
=end


# I want to test a common functionality of each of these four different object types: Length == 3
# Instead of writing it statements for each test, defined a 'shared_example'



# Declaring shared_examples method
RSpec.shared_examples 'a Ruby object with a length method that returns 3' do
    it 'returns number of items' do
        # I don't need to declare subject. RSpec dynamically knows what it is
        expect(subject.length).to eq(3)
    end
end

RSpec.describe Array do
    subject {[1,2,3]}
    # The string identifies which shared example I want to include
    include_examples 'a Ruby object with a length method that returns 3'

    # it 'returns number of items' do
    #     expect(subject.length).to eq(3)
    # end
end

RSpec.describe String do
    subject {'abc'}
    include_examples 'a Ruby object with a length method that returns 3'
    
    # it 'returns number of items' do
    #     expect(subject.length).to eq(3)
    # end
end


RSpec.describe Hash do
    subject{{a: 1, b: 2, c: 3}}
    include_examples 'a Ruby object with a length method that returns 3'

    # it 'returns number of items' do
    #     expect(subject.length).to eq(3)
    # end
end

class SausageLink 
    def length
        3
    end
end

RSpec.describe SausageLink do
    # Creates new instance of SausageLink
    subject {described_class.new}
    include_examples 'a Ruby object with a length method that returns 3'


    # it 'returns number of items' do
    #     expect(subject.length).to eq(3)
    # end
end

