def caesar_cipher(string_to_encode, cipher_parameter)
  codes = {
    'a' => 0,
    'b' => 1,
    'c' => 2,
    'd' => 3,
    'e' => 4,
    'f' => 5,
    'g' => 6,
    'h' => 7,
    'i' => 8,
    'j' => 9,
    'k' => 10,
    'l' => 11,
    'm' => 12,
    'n' => 13,
    'o' => 14,
    'p' => 15,
    'q' => 16,
    'r' => 17,
    's' => 18,
    't' => 19,
    'u' => 20,
    'v' => 21,
    'w' => 22,
    'x' => 23,
    'y' => 24,
    'z' => 25
  }

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
