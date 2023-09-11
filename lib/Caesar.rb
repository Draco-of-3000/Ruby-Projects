class Caesar
    attr_reader :plaintext, :key

    def initialize(plaintext, key)
        @plaintext = plaintext
        @key = key
    end
      
    # Check if Key is valid (is an integer)
    def key_is_valid?
        if !@key.to_s.match?(/\A\d+\z/)
            error = puts "INVALID KEY! Cannot Encrypt '#{plaintext}'. Key must be an integer. E.g '4', '50'"
            puts error
            return false
        end
        return true
    end
      
    #Encrypt plaintext based on key
    def encrypt
        result = ''
        for i in 0..(plaintext.length - 1)
            if plaintext[i].match?(/[a-z]/)
                result += ((plaintext[i].ord - 'a'.ord + key) % 26 + 'a'.ord).chr
            elsif plaintext[i].match?(/[A-Z]/)
                result += ((plaintext[i].ord - 'A'.ord + key) % 26 + 'A'.ord).chr
            else
                result += plaintext[i]
            end
        end
      
        puts result
    end
end

cypher = Caesar.new("I love you", 5)
cypher.key_is_valid?
cypher.encrypt