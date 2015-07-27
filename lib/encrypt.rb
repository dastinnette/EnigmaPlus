require 'pry'  # => true

class Encrypt


end  # => nil

class Key

  attr_reader :key  # => nil

  def initialize(key = nil)
    @key = key               # => nil
  end                        # => :initialize

  def generate_key
    num1 = rand(0..9)                            # => 2
    num2 = rand(0..9)                            # => 7
    num3 = rand(0..9)                            # => 8
    num4 = rand(0..9)                            # => 9
    num5 = rand(0..9)                            # => 4
    @key = "#{num1}#{num2}#{num3}#{num4}#{num5}"  # => "27894"
  end                                            # => :generate_key

  def rot_a
    key[0..1]  # ~> NoMethodError: undefined method `[]' for nil:NilClass
  end          # => :rot_a

  def rot_b
    key[1..2]
  end          # => :rot_b

  def rot_c
    key[2..3]
  end          # => :rot_c

  def rot_d
    key[3..4]
  end          # => :rot_d
end            # => :rot_d

class Offset

  attr_reader :offset  # => nil

  def initialize(offset = nil)
    @offset = offset || find_offset
  end                                # => :initialize

  def find_offset
    date = Time.now.strftime("%d%m%y")
    squared = date.to_i**2
    squared.to_s[-4..-1]
  end                                   # => :find_offset

  def off_a
    offset[-4]
  end           # => :off_a

  def off_b
    offset[-3]
  end           # => :off_b

  def off_c
    offset[-2]
  end           # => :off_c

  def off_d
    offset[-1]
  end           # => :off_d
end             # => :off_d

if __FILE__ == $0   # => true
key = Key.new       # => #<Key:0x007fd5640a6180 @key=nil>
p key.generate_key  # => "27894"
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

# >> "27894"

# ~> NoMethodError
# ~> undefined method `[]' for nil:NilClass
# ~>
# ~> /Users/davidstinnette/Turing/Enigma/EnigmaPlus/lib/encrypt.rb:26:in `rot_a'
# ~> /Users/davidstinnette/Turing/Enigma/EnigmaPlus/lib/encrypt.rb:76:in `<main>'
