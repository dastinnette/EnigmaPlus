require_relative 'offset_calculator'


class Decrypt

  attr_reader :a_rotation, :b_rotation, :c_rotation, :d_rotation

  def initialize(a_rotation = 0, b_rotation = 0, c_rotation = 0, d_rotation = 0)
    @a_rotation = a_rotation
    @b_rotation = b_rotation
    @c_rotation = c_rotation
    @d_rotation = d_rotation
  end

  def get_rotations
    calc = OffsetCalculator.new(key, offset)
    calc.given_offset(date)
    @a_rotation = calc.a_rotation.-@
    @b_rotation = calc.b_rotation.-@
    @c_rotation = calc.c_rotation.-@
    @d_rotation = calc.d_rotation.-@
  end

  def characters
    characters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", " ", ".", "," ]
  end

  def a_cipher
    characters
    a_rotated_characters = characters.rotate(a_rotation)
    Hash[characters.zip(a_rotated_characters)]
  end

  def b_cipher
    characters
    b_rotated_characters = characters.rotate(b_rotation)
    Hash[characters.zip(b_rotated_characters)]
  end

  def c_cipher
    characters
    c_rotated_characters = characters.rotate(c_rotation)
    Hash[characters.zip(c_rotated_characters)]
  end

  def d_cipher
    characters
    d_rotated_characters = characters.rotate(d_rotation)
    Hash[characters.zip(d_rotated_characters)]
  end

  def decrypt_letter_a(letter)
    cipher_for_rotation = a_cipher
    cipher_for_rotation[letter]
  end

  def decrypt_letter_b(letter)
    cipher_for_rotation = b_cipher
    cipher_for_rotation[letter]
  end

  def decrypt_letter_c(letter)
    cipher_for_rotation = c_cipher
    cipher_for_rotation[letter]
  end

  def decrypt_letter_d(letter)
    cipher_for_rotation = d_cipher
    cipher_for_rotation[letter]
  end

  def decrypt(string)
    array = string.downcase.split("")
    fours = array.each_slice(4).to_a
    results = ""
    fours.each do |four|
      results << decrypt_letter_a(four[0])
      results << decrypt_letter_b(four[1])
      results << decrypt_letter_c(four[2])
      results << decrypt_letter_d(four[3])
    end
    results
  end


end

if __FILE__ == $0
  # e = Encryptor.new
  # e.get_rotations
  # encrypted = e.encrypt("This is my file to encrypt. It is a secret message that you will never be able to read. That is too bad.")

d = Decryptor.new
d.get_rotations
d.decrypt("k3sh142zdhh7,7ozk h6ey1ngciz,ch jtkzj0mg8chb8b22 0hi.w3zp 4zn4va19ok8ah38tk3c0hift164zizk3ki142zk yz5wn0")
end
