# Checks for exceptions or errors - Seems like it is similar to try/catch

RSpec.describe 'raise_error matcher' do
    
    # This method will raise the 'Name Error' - x is not defined
    def some_method
        x
    end

    # CustomError inherits from Standard Error. The ; tells Ruby that there is no actual body to the class. End should be on the same line with this syntax
    # Make sure to name CustomError symantically
    class CustomError < StandardError; end

    # We want to make sure we are returning the correct error
    it 'can check for a specific error' do
        # Pass a Ruby block - Could be written with do/end
        # This is where we put the code that we expect to cause errors - some_method
        # We pass to raise_error the error we are expecting to occur 
        expect {some_method}.to raise_error(NameError)
    end

    it 'checks for the NameError' do
        expect {some_method}.to raise_error(NameError)
    end

    it 'checks for the ZeroDivisionError' do
        expect{10/0}.to raise_error(ZeroDivisionError)
    end

    it 'can check for a user-created error' do
        expect {raise CustomError}.to raise_error(CustomError)
    end
end


# For these tests to pass you must pass the CORRECT ERROR 