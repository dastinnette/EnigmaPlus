class Encryptor

  def encrypt_me
    "This is my file to encrypt. It's a secret message that you'll never be able to read. That's too bad."
  end                                                                                                       # => :encrypt_me

  def characters
    characters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", "," ]  # => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", ","], ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", ","], ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", ","], ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ...
  end                                                                                                                                                                                                                  # => :characters

  def a_cipher(a_rotation)
    characters                                            # => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", ","], ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", ","]
    a_rotated_characters = characters.rotate(a_rotation)  # => ["b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", ",", "a"], ["b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", ",", "a"]
    Hash[characters.zip(a_rotated_characters)]            # => {"a"=>"b", "b"=>"c", "c"=>"d", "d"=>"e", "e"=>"f", "f"=>"g", "g"=>"h", "h"=>"i", "i"=>"j", "j"=>"k", "k"=>"l", "l"=>"m", "m"=>"n", "n"=>"o", "o"=>"p", "p"=>"q", "q"=>"r", "r"=>"s", "s"=>"t", "t"=>"u", "u"=>"v", "v"=>"w", "w"=>"x", "x"=>"y", "y"=>"z", "z"=>"0", "0"=>"1", "1"=>"2", "2"=>"3", "3"=>"4", "4"=>"5", "5"=>"6", "6"=>"7", "7"=>"8", "8"=>"9", "9"=>" ", " "=>".", "."=>",", ","=>"a"}, {"a"=>"b", "b"=>"c", "c"=>"d", "d"=>"e", "e"=>"f", "f"=>"g", "g"=>"h", "h"=>"i", "i"=>"j", "j"=>"k", "k"=>"l", "l"=>"m", "m"=>"n", "n"=>"o", "o"=>"p", "p"=>"q", "q"=>"r", "r"=>"s", "s"=>"t", "t"=>"u", "u"=>"v", "v"=>"w", "w"=>"x", "x"=>"y", "y"=>"z", "z"=>"0", "0"=>"1", "1"=>"2", "2"=>"3", "3"=>"4", "4"=>"5", "5"=>"6", "6"=>"7", "7"=>"8", "8"=>"9", "9"=>" ", " "=>".", "."=>",", ","=>"a"}
  end                                                     # => :a_cipher

  def b_cipher(b_rotation)
    characters                                            # => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", ","]
    b_rotated_characters = characters.rotate(b_rotation)  # => ["b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", ",", "a"]
    Hash[characters.zip(b_rotated_characters)]            # => {"a"=>"b", "b"=>"c", "c"=>"d", "d"=>"e", "e"=>"f", "f"=>"g", "g"=>"h", "h"=>"i", "i"=>"j", "j"=>"k", "k"=>"l", "l"=>"m", "m"=>"n", "n"=>"o", "o"=>"p", "p"=>"q", "q"=>"r", "r"=>"s", "s"=>"t", "t"=>"u", "u"=>"v", "v"=>"w", "w"=>"x", "x"=>"y", "y"=>"z", "z"=>"0", "0"=>"1", "1"=>"2", "2"=>"3", "3"=>"4", "4"=>"5", "5"=>"6", "6"=>"7", "7"=>"8", "8"=>"9", "9"=>" ", " "=>".", "."=>",", ","=>"a"}
  end                                                     # => :b_cipher

  def c_cipher(c_rotation)
    characters                                            # => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", ","]
    c_rotated_characters = characters.rotate(c_rotation)  # => ["b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", ",", "a"]
    Hash[characters.zip(c_rotated_characters)]            # => {"a"=>"b", "b"=>"c", "c"=>"d", "d"=>"e", "e"=>"f", "f"=>"g", "g"=>"h", "h"=>"i", "i"=>"j", "j"=>"k", "k"=>"l", "l"=>"m", "m"=>"n", "n"=>"o", "o"=>"p", "p"=>"q", "q"=>"r", "r"=>"s", "s"=>"t", "t"=>"u", "u"=>"v", "v"=>"w", "w"=>"x", "x"=>"y", "y"=>"z", "z"=>"0", "0"=>"1", "1"=>"2", "2"=>"3", "3"=>"4", "4"=>"5", "5"=>"6", "6"=>"7", "7"=>"8", "8"=>"9", "9"=>" ", " "=>".", "."=>",", ","=>"a"}
  end                                                     # => :c_cipher

  def d_cipher(d_rotation)
    characters                                            # => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", ","]
    d_rotated_characters = characters.rotate(d_rotation)  # => ["b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", ",", "a"]
    Hash[characters.zip(d_rotated_characters)]            # => {"a"=>"b", "b"=>"c", "c"=>"d", "d"=>"e", "e"=>"f", "f"=>"g", "g"=>"h", "h"=>"i", "i"=>"j", "j"=>"k", "k"=>"l", "l"=>"m", "m"=>"n", "n"=>"o", "o"=>"p", "p"=>"q", "q"=>"r", "r"=>"s", "s"=>"t", "t"=>"u", "u"=>"v", "v"=>"w", "w"=>"x", "x"=>"y", "y"=>"z", "z"=>"0", "0"=>"1", "1"=>"2", "2"=>"3", "3"=>"4", "4"=>"5", "5"=>"6", "6"=>"7", "7"=>"8", "8"=>"9", "9"=>" ", " "=>".", "."=>",", ","=>"a"}
  end                                                     # => :d_cipher

  def encrypt_letter_a(letter, a_rotation)
    cipher_for_rotation = a_cipher(a_rotation)  # => {"a"=>"b", "b"=>"c", "c"=>"d", "d"=>"e", "e"=>"f", "f"=>"g", "g"=>"h", "h"=>"i", "i"=>"j", "j"=>"k", "k"=>"l", "l"=>"m", "m"=>"n", "n"=>"o", "o"=>"p", "p"=>"q", "q"=>"r", "r"=>"s", "s"=>"t", "t"=>"u", "u"=>"v", "v"=>"w", "w"=>"x", "x"=>"y", "y"=>"z", "z"=>"0", "0"=>"1", "1"=>"2", "2"=>"3", "3"=>"4", "4"=>"5", "5"=>"6", "6"=>"7", "7"=>"8", "8"=>"9", "9"=>" ", " "=>".", "."=>",", ","=>"a"}, {"a"=>"b", "b"=>"c", "c"=>"d", "d"=>"e", "e"=>"f", "f"=>"g", "g"=>"h", "h"=>"i", "i"=>"j", "j"=>"k", "k"=>"l", "l"=>"m", "m"=>"n", "n"=>"o", "o"=>"p", "p"=>"q", "q"=>"r", "r"=>"s", "s"=>"t", "t"=>"u", "u"=>"v", "v"=>"w", "w"=>"x", "x"=>"y", "y"=>"z", "z"=>"0", "0"=>"1", "1"=>"2", "2"=>"3", "3"=>"4", "4"=>"5", "5"=>"6", "6"=>"7", "7"=>"8", "8"=>"9", "9"=>" ", " "=>".", "."=>",", ","=>"a"}
    cipher_for_rotation[letter]                 # => "2", nil
  end                                           # => :encrypt_letter_a

  def encrypt_letter_b(letter, b_rotation)
    cipher_for_rotation = b_cipher(b_rotation)  # => {"a"=>"b", "b"=>"c", "c"=>"d", "d"=>"e", "e"=>"f", "f"=>"g", "g"=>"h", "h"=>"i", "i"=>"j", "j"=>"k", "k"=>"l", "l"=>"m", "m"=>"n", "n"=>"o", "o"=>"p", "p"=>"q", "q"=>"r", "r"=>"s", "s"=>"t", "t"=>"u", "u"=>"v", "v"=>"w", "w"=>"x", "x"=>"y", "y"=>"z", "z"=>"0", "0"=>"1", "1"=>"2", "2"=>"3", "3"=>"4", "4"=>"5", "5"=>"6", "6"=>"7", "7"=>"8", "8"=>"9", "9"=>" ", " "=>".", "."=>",", ","=>"a"}
    cipher_for_rotation[letter]                 # => "3"
  end                                           # => :encrypt_letter_b

  def encrypt_letter_c(letter, c_rotation)
    cipher_for_rotation = c_cipher(c_rotation)  # => {"a"=>"b", "b"=>"c", "c"=>"d", "d"=>"e", "e"=>"f", "f"=>"g", "g"=>"h", "h"=>"i", "i"=>"j", "j"=>"k", "k"=>"l", "l"=>"m", "m"=>"n", "n"=>"o", "o"=>"p", "p"=>"q", "q"=>"r", "r"=>"s", "s"=>"t", "t"=>"u", "u"=>"v", "v"=>"w", "w"=>"x", "x"=>"y", "y"=>"z", "z"=>"0", "0"=>"1", "1"=>"2", "2"=>"3", "3"=>"4", "4"=>"5", "5"=>"6", "6"=>"7", "7"=>"8", "8"=>"9", "9"=>" ", " "=>".", "."=>",", ","=>"a"}
    cipher_for_rotation[letter]                 # => "4"
  end                                           # => :encrypt_letter_c

  def encrypt_letter_d(letter, d_rotation)
    cipher_for_rotation = d_cipher(d_rotation)  # => {"a"=>"b", "b"=>"c", "c"=>"d", "d"=>"e", "e"=>"f", "f"=>"g", "g"=>"h", "h"=>"i", "i"=>"j", "j"=>"k", "k"=>"l", "l"=>"m", "m"=>"n", "n"=>"o", "o"=>"p", "p"=>"q", "q"=>"r", "r"=>"s", "s"=>"t", "t"=>"u", "u"=>"v", "v"=>"w", "w"=>"x", "x"=>"y", "y"=>"z", "z"=>"0", "0"=>"1", "1"=>"2", "2"=>"3", "3"=>"4", "4"=>"5", "5"=>"6", "6"=>"7", "7"=>"8", "8"=>"9", "9"=>" ", " "=>".", "."=>",", ","=>"a"}
    cipher_for_rotation[letter]                 # => "5"
  end                                           # => :encrypt_letter_d

  def encrypt(string, a_rotation, b_rotation, c_rotation, d_rotation)
    p string.length                                                    # => 100
    array = string.split("")                                           # => ["T", "h", "i", "s", " ", "i", "s", " ", "m", "y", " ", "f", "i", "l", "e", " ", "t", "o", " ", "e", "n", "c", "r", "y", "p", "t", ".", " ", "I", "t", "'", "s", " ", "a", " ", "s", "e", "c", "r", "e", "t", " ", "m", "e", "s", "s", "a", "g", "e", " ", "t", "h", "a", "t", " ", "y", "o", "u", "'", "l", "l", " ", "n", "e", "v", "e", "r", " ", "b", "e", " ", "a", "b", "l", "e", " ", "t", "o", " ", "r", "e", "a", "d", ".", " ", "T", "h", "a", "t", "'", "s", " ", "t", "o", "o", " ", "b", "a", "d", "."]
    fours = array.each_slice(4).to_a                                   # => [["T", "h", "i", "s"], [" ", "i", "s", " "], ["m", "y", " ", "f"], ["i", "l", "e", " "], ["t", "o", " ", "e"], ["n", "c", "r", "y"], ["p", "t", ".", " "], ["I", "t", "'", "s"], [" ", "a", " ", "s"], ["e", "c", "r", "e"], ["t", " ", "m", "e"], ["s", "s", "a", "g"], ["e", " ", "t", "h"], ["a", "t", " ", "y"], ["o", "u", "'", "l"], ["l", " ", "n", "e"], ["v", "e", "r", " "], ["b", "e", " ", "a"], ["b", "l", "e", " "], ["t", "o", " ", "r"], ["e", "a", "d", "."], [" ", "T", "h", "a"], ["t", "'", "s", " "], ["t", "o", "o", " "], ["b", "a", "d", "."]]
    results = ""                                                       # => ""
    fours.each do |four|                                               # => [["T", "h", "i", "s"], [" ", "i", "s", " "], ["m", "y", " ", "f"], ["i", "l", "e", " "], ["t", "o", " ", "e"], ["n", "c", "r", "y"], ["p", "t", ".", " "], ["I", "t", "'", "s"], [" ", "a", " ", "s"], ["e", "c", "r", "e"], ["t", " ", "m", "e"], ["s", "s", "a", "g"], ["e", " ", "t", "h"], ["a", "t", " ", "y"], ["o", "u", "'", "l"], ["l", " ", "n", "e"], ["v", "e", "r", " "], ["b", "e", " ", "a"], ["b", "l", "e", " "], ["t", "o", " ", "r"], ["e", "a", "d", "."], [" ", "T", "h", "a"], ["t", "'", "s", " "], ["t", "o", "o", " "], ["b", "a", "d", "."]]
      results << encrypt_letter_a(four[0], a_rotation)                 # ~> TypeError: no implicit conversion of nil into String
      results << encrypt_letter_b(four[1], b_rotation)
      results << encrypt_letter_c(four[2], c_rotation)
      results << encrypt_letter_d(four[3], d_rotation)
    end
    p results
  end
  #
  # def encrypt(string, a_rotation, b_rotation, c_rotation, d_rotation)
  #   # p string.length
  #   i = 0                                                              # => 0
  #   encrypted_arr = []                                                 # => []
  #   while i <= string.length                                           # => true, true, true, true, true, false
  #     if i % 4 == 0                                                    # => true, false, false, false, true
  #       encrypted_arr << encrypt_letter_a(string[i], a_rotation)       # => ["2"], ["2", "3", "4", "5", nil]
  #       i += 1                                                         # => 1, 5
  #     elsif (i % 4 == 1)                                               # => true, false, false
  #       encrypted_arr << encrypt_letter_b(string[i], b_rotation)       # => ["2", "3"]
  #       i += 1                                                         # => 2
  #     elsif (i % 4 == 2)                                               # => true, false
  #       encrypted_arr << encrypt_letter_c(string[i], c_rotation)       # => ["2", "3", "4"]
  #       i += 1                                                         # => 3
  #     elsif (i % 4 == 3)                                               # => true
  #       encrypted_arr << encrypt_letter_d(string[i], d_rotation)       # => ["2", "3", "4", "5"]
  #       i += 1                                                         # => 4
  #     end                                                              # => 1, 2, 3, 4, 5
  #     encrypted_string = encrypted_arr.join                            # => "2", "23", "234", "2345", "2345"
  #     # puts encrypted_string                                            # => nil, nil, nil, nil, nil
  #     # puts encrypted_string.length
  #   end                                                                # => nil
  # end                                                                  # => :encrypt

end  # => :encrypt

if __FILE__ == $0              # => true
e = Encryptor.new              # => #<Encryptor:0x007fccd1183f30>
e.encrypt("1234", 1, 1, 1, 1)  # => nil
end                            # => nil
