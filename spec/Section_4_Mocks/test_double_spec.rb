# Double is a new method - Think of the keyword as a replacement for the actual thing (like a stunt double)
# It creates a test double that can respond to any variety of methods that are called on it

RSpec.describe 'a random double' do
    it 'only allows defined methods to be invoked' do
        # The double methods creates the object that we want to mock. We pass it a name or identifier
        stuntman = double("Mr. Danger", fall_off_ladder: 'Ouch', light_on_fire: true) # fall_off_ladder and light_on_fire are methods with 'Ouch' and true the returned values

        expect(stuntman.fall_off_ladder).to eq('Ouch')
        expect(stuntman.light_on_fire).to eq(true)
    end


    it 'has additional syntax options' do
        stuntwoman = double('Mrs. Danger')
        # If I don't provide a response ("Ouch"), rspec provides a default Nil value
        # Otherwise, use .and_return() to pass your response
        allow(stuntwoman).to receive(:fall_off_ladder).and_return('Ouch')
        expect(stuntwoman.fall_off_ladder).to eq('Ouch')
    end


    it 'has another syntax option' do
        stuntman = double('Mr. Danger')
        allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)
        expect(stuntman.fall_off_ladder).to eq('Ouch')
        expect(stuntman.light_on_fire).to eq(true)
    end
end

=begin

- Running stuntman.fall_off_ladder w/ no args and not defined
Failures:

  1) a random double only allows defined methods to be invoked
     Failure/Error: stuntman.fall_off_ladder
       #<Double "Mr. Danger"> received unexpected message :fall_off_ladder with (no args)
     # ./spec/Section_4_Mocks/test_double_spec.rb:10:in `block (2 levels) in <top (required)>'

The double is not a dynamic object that can respond to whatever we want. It is known as a "strict double", meaning we have to define the methods that are going to be available to the object, and define what the return value should be


--- HOW TO PASS METHOD AND EXPECTED RESPONSE ---

    - When declaring the identifier (double("Mr. Danger")), we can pass it a hash{}. The keys equal the methods, and the values equal the returned values

=end