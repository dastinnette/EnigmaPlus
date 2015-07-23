require 'pry'

class Encrypt




end

class Key

  attr_reader :key

  def initialize(key = nil)
    @key = key
  end

  def generate_key
    num1 = rand(0..9)
    num2 = rand(0..9)
    num3 = rand(0..9)
    num4 = rand(0..9)
    num5 = rand(0..9)
    @key = "#{num1}#{num2}#{num3}#{num4}#{num5}"
  end

  def rot_a
    @key[0..1]
  end

  def rot_b
    @key[1..2]
  end

  def rot_c
    @key[2..3]
  end

  def rot_d
    @key[3..4]
  end

end

class Offset

  def initialize(offset = nil)
    @offset = offset || find_offset
  end

  def find_offset
    date = Time.now.strftime("%d%m%y")
    squared = date.to_i**2
    squared.to_s[-4..-1]
  end

  def off_a
    @offset[-4]
  end

  def off_b
    @offset[-3]
  end

  def off_c
    @offset[-2]
  end

  def off_d
    @offset[-1]
  end
end

if __FILE__ == $0
key = Key.new
p key.generate_key
p key.rot_a
p key.rot_b
p key.rot_c
p key.rot_d

offset = Offset.new
p offset.off_a
p offset.off_b
p offset.off_c
p offset.off_d
end
