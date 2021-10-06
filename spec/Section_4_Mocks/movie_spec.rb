# The goal of this lesson is to test the Movie class, which depends on the Actor class. In testing, we can use Mocks to separate coupled classes to properly test each one


class Actor 
    def initialize(name)
        @name = name
    end

    # When teting the ready? method, we don't want to have the delay, we only care about the boolean value
    def ready?
        puts "Actor, are you ready?"
        # Sleep is a ruby method that delays the execution of code for a given amount of seconds
        # This is a good method for testing code that has async features such as DB calls or APIs integration
        sleep(3)
        true
    end

    def act
        "Dramatic.... pause!"
    end


    def fall_off_ladder
        "Call my agent! No way"
    end

    def light_on_fire
        false
    end
end

# Movie doesn't care HOW the actor methods work, it just cares if they respond correctly
class Movie
    attr_reader :actor
    def initialize(actor)
        @actor = actor
    end

    # When testing the Movie class, all we want to test is that start_filming is able to communicate with Actor. We don't care how actor does it, just that Movie can tell Actor to do it
    def start_filming
        if actor.ready?
            puts actor.act
            puts actor.fall_off_ladder
            puts actor.light_on_fire
        end
    end
end

# To run the ruby code - Just as an example to see how the code runs
# actor = Actor.new('Calculon')
# movie = Movie.new(actor)
# movie.start_filming


RSpec.describe Movie do
    # Remember, in TDD, I most likely won't have the classes built yet, so these methods can be whatever I want them to be. However, best practices are to keep them as close to the actual method names as possible
    let(:stuntman) {double("Mr. Danger", ready?: true, act: "Any string at all, it doesn't matter", fall_off_ladder: "Yup, another random string", light_on_fire: true)}

    # Remember, the Actor class may not have been created yet, so we pass the Mock class. The Mock just needs to be able to respond to the eventual mehtods that will be in Actor once its made
    subject {described_class.new(stuntman)}

    describe '#start_filming method' do
        it 'expects an actor to do 3 actions' do
            expect(stuntman).to receive(:ready?)
            expect(stuntman).to receive(:act)
            expect(stuntman).to receive(:fall_off_ladder)
            expect(stuntman).to receive(:light_on_fire)
            subject.start_filming # Subject is the Movie instance. We want to validate that the Actor receives to methods
        end
    end
end