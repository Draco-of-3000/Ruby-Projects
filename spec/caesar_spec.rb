require "./lib/Caesar"

describe Caesar do
    describe "#key_is_valid?" do
        it "returns true if the key is a valid integer" do 
            caesar = Caesar.new("text", 4)
            expect(caesar.key_is_valid?).to be(true)
        end

        it "returns false if the key is not a valid integer" do 
            caesar = Caesar.new("text", "invalid")
            expect(caesar.key_is_valid?).to be(false)
        end
    end
end