require 'pry'

class Encrypt




end

class Key

  attr_reader :key

  def generate_key
    num1 = rand(0..9)
    num2 = rand(0..9)
    num3 = rand(0..9)
    num4 = rand(0..9)
    num5 = rand(0..9)
    @key = "#{num1}#{num2}#{num3}#{num4}#{num5}"
  end

  def rot_a(key)
    key[0..1]
    # key_array = key.chars
    # key_array[0..1].join
  end

  def rot_b(key)
    key[1..2]
  end

  def rot_c(key)
    key[2..3]
  end

  def rot_d(key)
    key[3..4]
  end

end

class Offset
  
end

# if __FILE__ == $0
# key = Key.new
# p key.generate_key
# p key.rot_a(key)
# p key.rot_b(key)
# p key.rot_c(key)
# p key.rot_d(key)
# end
