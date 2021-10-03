# Verifies that an object can respond to a given method


class HotChocolate
    def drink
        'Delicious'
    end

    def discard
        "Plop"
    end

    def purchase(number)
        "Awesome, I just purchased #{number} hot chocolates"
    end
end

class Coffee
    def drink; end
    def discard; end
    def purchase(number); end
end

# Polymorphism - We as devs don't care what object we are dealing with, we should care about what methods it can respond to
# - For example, we don't care if we get HotChocolate or Coffee. We just care if the 3 methods work for each class


RSpec.describe HotChocolate do
    it 'confirms that an object can respond to a method' do
        # We pass symbols of the methods we want to check for that exist on that instance
        expect(subject).to respond_to(:drink, :discard, :purchase)
    end

    # For purchase, we should be more precise. We want to make sure it accepts one argument
    it 'confirms that an object can respond to a method with arguments' do
        # We pass 'with' the number of arguments we want the method to have 
        expect(subject).to respond_to(:purchase).with(1).arguments
    end

    it {is_expected.to respond_to(:purchase, :discard)}
    it {is_expected.to respond_to(:purchase).with(1).arguments}
end

RSpec.describe Coffee do
    it 'confirms that an object can respond to a method' do
        expect(subject).to respond_to(:drink)
    end
end