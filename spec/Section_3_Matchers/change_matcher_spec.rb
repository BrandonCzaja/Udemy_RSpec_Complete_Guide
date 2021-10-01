# Allows us to observe the state of an object, both before and after, a method is invoked
# This allows us to track changes overtime, and modifications to state

RSpec.describe 'change matcher' do
    subject{[1,2,3]}

    it 'checks that a method changes object state' do
        # We pass expect methods that may or may not change the object's state
        # Then we pass what we want to track, before and after the method runs, after the 'change' matcher
        
        # We expect the action to change the length of subject from 3, to 4
        # Be careful using 'from and to' because if the subject length changes in the code, the tests will fail
        # Use the 'by' method for dynamic checks
        expect {subject.push(4)}.to change {subject.length}.from(3).to(4)
    end

    # This is better syntax because it checks the subject dynamically
    it 'dynamically checks the length of subject' do
        expect {subject.push(4)}.to change {subject.length}.by(1)
    end

    it 'accepts negative arguments' do
        expect {subject.pop}.to change {subject.length}.by(-1)
    end
end

# It checks the length of the array => pushes the value => then checks it again