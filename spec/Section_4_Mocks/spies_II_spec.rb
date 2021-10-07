# Have a garage that stores multiple cars

class Car
    def initialize(model)
        @model = model
    end
end


class Garage
    attr_reader :storage

    def initialize
        @storage = []
    end

    def add_to_collection(model)
        @storage << Car.new(model)
    end
end

# We need to fake the car and the car instance
RSpec.describe Garage do
    let(:car) {instance_double(Car)}

    before do
        allow(Car).to receive(:new).and_return(car)
    end

    it 'adds a car to its storage' do
        subject.add_to_collection('Honda Civic')
        # I want to test that the car received the 'new' method with the correct args 
        # I also want to test that the storage array should have the right number of elements
        expect(Car).to have_received(:new).with('Honda Civic')
        expect(subject.storage.length).to eq(1) # Works, but not great
        expect(subject.storage.first).to eq(car) # Better
    end

end