def caesar_cipher(s, shift)
    cipher = String.new
    sentence = s.split(" ")
    for word in sentence
        word.split("").each do |c|
            if c.ord <= 90 && c.ord >= 65
                n = (c.ord + shift).modulo(90)
                n = n < 97 ? n + 64 : n
                cipher += n.chr
            elsif c.ord <= 122 && c.ord >= 97
                n = (c.ord + shift).modulo(122)
                n = n < 97 ? n + 96 : n
                cipher += n.chr
            else
                cipher += c
            end
        end
        cipher += ' '
    end
    return cipher.strip
end

puts caesar_cipher("What a string!", 5)