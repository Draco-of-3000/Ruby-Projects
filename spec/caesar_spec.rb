require "./lib/Caesar"

describe Caesar do
    context "is the key valid?" do
        it "returns true if the key is a valid integer" do 
            caesar = Caesar.new("text", 4)
            expect(caesar.key_is_valid?).to be(true)
        end

        it "returns false if the key is not a valid integer" do 
            caesar = Caesar.new("text", "invalid")
            expect(caesar.key_is_valid?).to be(false)
        end
    end

    context "encrypt text" do 
        it "encrypts lowercase letter correctly" do 
            caesar = Caesar.new("abc", 1)
            expect(caesar.encrypt).to eq("bcd")
        end

        it "encrypts uppercase letter correctly" do 
            caesar = Caesar.new("ABC", 1)
            expect(caesar.encrypt).to eq("BCD")
        end

        it "leaves non-alphabet characters unchanged" do
            caesar = Caesar.new("Hello, World!", 1)
            expect(caesar.encrypt).to eq("Ifmmp, Xpsme!")
        end
    end
end