def caesar_cipher(string_to_encode, cipher_parameter)
  codes = ('a'..'z').zip((0..25)).to_h

  encoded_string = ''

  string_to_encode.split('').each do |element|
    if codes.keys.include?(element.downcase)
      is_upcase = true if element == element.upcase
      new_parameter = codes[element.downcase] + cipher_parameter > 25 ? codes[element.downcase] + cipher_parameter - 25 : codes[element.downcase] + cipher_parameter
      encoded_string += is_upcase ? codes.key(new_parameter).upcase : codes.key(new_parameter)
    else
      encoded_string += element
    end
  end

  encoded_string
end

puts caesar_cipher('What a string!', 5)