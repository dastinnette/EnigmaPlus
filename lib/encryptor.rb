require_relative "offset_calculator"

class Encryptor

  attr_reader :a_rotation, :b_rotation, :c_rotation, :d_rotation

  def get_rotations
    calc = OffsetCalculator.new
    calc.get_key
    calc.get_offset
    @a_rotation = calc.a_rotation
    @b_rotation = calc.b_rotation
    @c_rotation = calc.c_rotation
    @d_rotation = calc.d_rotation
  end

  def encrypt_me
    "This is my file to encrypt. It's a secret message that you'll never be able to read. That's too bad."
  end

  def characters
    characters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", "," ]
  end

  def a_cipher(a_rotation)
    characters
    a_rotated_characters = characters.rotate(a_rotation)
    Hash[characters.zip(a_rotated_characters)]
  end

  def b_cipher(b_rotation)
    characters
    b_rotated_characters = characters.rotate(b_rotation)
    Hash[characters.zip(b_rotated_characters)]
  end

  def c_cipher(c_rotation)
    characters
    c_rotated_characters = characters.rotate(c_rotation)
    Hash[characters.zip(c_rotated_characters)]
  end

  def d_cipher(d_rotation)
    characters
    d_rotated_characters = characters.rotate(d_rotation)
    Hash[characters.zip(d_rotated_characters)]
  end

  def encrypt_letter_a(letter, a_rotation)
    cipher_for_rotation = a_cipher(a_rotation)
    cipher_for_rotation[letter]
  end

  def encrypt_letter_b(letter, b_rotation)
    cipher_for_rotation = b_cipher(b_rotation)
    cipher_for_rotation[letter]
  end

  def encrypt_letter_c(letter, c_rotation)
    cipher_for_rotation = c_cipher(c_rotation)
    cipher_for_rotation[letter]
  end

  def encrypt_letter_d(letter, d_rotation)
    cipher_for_rotation = d_cipher(d_rotation)
    cipher_for_rotation[letter]
  end

  def encrypt(string, a_rotation, b_rotation, c_rotation, d_rotation)
    p string.length
    array = string.split("")
    fours = array.each_slice(4).to_a
    results = ""
    fours.each do |four|
      results << encrypt_letter_a(four[0], a_rotation)
      results << encrypt_letter_b(four[1], b_rotation)
      results << encrypt_letter_c(four[2], c_rotation)
      results << encrypt_letter_d(four[3], d_rotation)
    end
    p results
  end

end

if __FILE__ == $0
e = Encryptor.new
e.get_rotations
e.encrypt("1234", a_rotation, b_rotation, c_rotation, d_rotation)
end
