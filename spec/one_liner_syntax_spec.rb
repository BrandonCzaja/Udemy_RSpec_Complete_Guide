RSpec.describe 'shorthand syntax' do
    subject{5}

    context 'with classic syntax' do
        it 'should equal 5' do
            expect(subject).to eq(5)
        end
    end

    # This only works with the 'subject' method, NOT let
    context 'with one-liner syntax' do
        it {is_expected.to eq(5)}
        # Notice that we don't provide a test string. RSpec provides one: "is expected to eq 5"
        # Since this is only one line it is traditional to use {} instead of do-end. You can still use do-end if you want
    end

end