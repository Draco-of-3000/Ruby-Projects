class Caesar
    def initialize(plaintext, key)
        @plaintext = plaintext
        @key = key
    end
      
        # Check if Key is valid (is an integer)
        if !key.to_s.match?(/\A\d+\z/)
            error = puts "INVALID KEY! Cannot Encrypt '#{plaintext}'. Key must be an integer. E.g '4', '50'"
            return error
        end
      
        #Encrypt plaintext based on key
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
      
        return result
    end
end