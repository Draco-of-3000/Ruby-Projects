require "./lib/Caesar"

describe Caesar do
    describe "#key_is_valid?" do
        it "returns true if the key is a valid integer" do 
            caesar = Caesar.new("text", 4)
            expect(caesar.key_is_valid?).to be(true)
        end
    end
end