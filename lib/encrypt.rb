require 'pry'  # => true

class Encrypt


end  # => nil

class Key

  attr_reader :key  # => nil

  def initialize(key = nil)
    @key = key               # => nil
  end                        # => :initialize

  def generate_key
    num1 = rand(0..9)                             # => 2
    num2 = rand(0..9)                             # => 2
    num3 = rand(0..9)                             # => 5
    num4 = rand(0..9)                             # => 4
    num5 = rand(0..9)                             # => 8
    @key = "#{num1}#{num2}#{num3}#{num4}#{num5}"  # => "22548"
  end                                             # => :generate_key

  def rot_a
    key[0..1]  # => "22"
  end          # => :rot_a

  def rot_b
    key[1..2]  # => "25"
  end          # => :rot_b

  def rot_c
    key[2..3]  # => "54"
  end          # => :rot_c

  def rot_d
    key[3..4]  # => "48"
  end          # => :rot_d
end            # => :rot_d

class Offset

  attr_reader :offset  # => nil

  def initialize(offset = nil)
    @offset = offset            # => nil
  end                           # => :initialize

  def find_offset
    date    = Time.now.strftime("%d%m%y")  # => "270715"
    squared = date.to_i**2                 # => 73286611225
    offset  = squared.to_s.chomp[-4..-1]   # => "1225"
    @offset = offset                       # => "1225"
  end                                      # => :find_offset

  def off_a
    offset[-4]  # => "1"
  end           # => :off_a

  def off_b
    offset[-3]  # => "2"
  end           # => :off_b

  def off_c
    offset[-2]  # => "2"
  end           # => :off_c

  def off_d
    offset[-1]  # => "5"
  end           # => :off_d
end             # => :off_d

if __FILE__ == $0   # => true
key = Key.new       # => #<Key:0x007fbd98b1eee8 @key=nil>
p key.generate_key  # => "22548"
p key.rot_a         # => "22"
p key.rot_b         # => "25"
p key.rot_c         # => "54"
p key.rot_d         # => "48"

offset = Offset.new   # => #<Offset:0x007fbd98b1c328 @offset=nil>
p offset.find_offset  # => "1225"
p offset.off_a        # => "1"
p offset.off_b        # => "2"
p offset.off_c        # => "2"
p offset.off_d        # => "5"
end                   # => "5"

# >> "22548"
# >> "22"
# >> "25"
# >> "54"
# >> "48"
# >> "1225"
# >> "1"
# >> "2"
# >> "2"
# >> "5"
