# These tests intentionally fail. It is to show the strictness of instance doubles

class Person
    def a(seconds)
        sleep(seconds)
        "Hello"
    end
end


RSpec.describe Person do
    describe 'regulare double' do
        it 'can implement ANY method' do
            person = double(a: 'Hello', b: 20)
            expect(person.a).to eq("Hello")
        end
    end

    # Verifying doubles mimic real classes, but are much more strict than a regular double
    describe 'using an instance double (aka verifying double)' do
        it 'can only implement methods that are defined on the class' do
            
            # The first arg is what class we want to double. We actually mocking instances of this Class
            # If I pass args that don't exist on the class, the test will fail
            # Actual error message:  the Person class does not implement the instance method: b
            # person = instance_double(Person, {a: 'Hello', b: 20})

            # This test would fail because I am not passing 2 args to :a. Err msg: Wrong number of arguments. Expected 1, got 2.
            person = instance_double(Person)
            allow(person).to receive(:a).with(3, 10).and_return("Hello")
        end
    end


end