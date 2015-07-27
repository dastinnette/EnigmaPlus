require_relative "encrypt"  # => true

class OffsetCalculator

  attr_reader :key, :offset  # => nil

  def initialize(key = nil, offset = nil)
    @key    = key                          # => nil
    @offset = offset                       # => nil
  end                                      # => :initialize

  def get_key
    @key = Key.new.generate_key  # => "01844"
  end                            # => :get_key

  def date_offset
    @offset = Offset.new.find_offset  # => "1225"
  end                                 # => :date_offset

  def rot_a
    key[0..1]  # => "01", "01"
  end          # => :rot_a

  def rot_b
    key[1..2]  # => "18", "18"
  end          # => :rot_b

  def rot_c
    key[2..3]  # => "84", "84"
  end          # => :rot_c

  def rot_d
    key[3..4]  # => "44", "44"
  end          # => :rot_d

  def off_a
    offset[-4]  # => "1", "1"
  end           # => :off_a

  def off_b
    offset[-3]  # => "2", "2"
  end           # => :off_b

  def off_c
    offset[-2]  # => "2", "2"
  end           # => :off_c

  def off_d
    offset[-1]  # => "5", "5"
  end           # => :off_d

  def a_rotation
    rot_a.to_i + off_a.to_i  # => 2
  end                        # => :a_rotation

  def b_rotation
    rot_b.to_i + off_b.to_i  # => 20
  end                        # => :b_rotation

  def c_rotation
    rot_c.to_i + off_c.to_i  # => 86
  end                        # => :c_rotation

  def d_rotation
    rot_d.to_i + off_d.to_i  # => 49
  end                        # => :d_rotation

end  # => :d_rotation


if __FILE__ == $0              # => true
  calc = OffsetCalculator.new  # => #<OffsetCalculator:0x007f9e42accd20 @key=nil, @offset=nil>
  calc.get_key                 # => "01844"
  calc.date_offset             # => "1225"
  p calc.rot_a                 # => "01"
  p calc.rot_b                 # => "18"
  p calc.rot_c                 # => "84"
  p calc.rot_d                 # => "44"
  p calc.off_a                 # => "1"
  p calc.off_b                 # => "2"
  p calc.off_c                 # => "2"
  p calc.off_d                 # => "5"
  p calc.a_rotation            # => 2
  p calc.b_rotation            # => 20
  p calc.c_rotation            # => 86
  p calc.d_rotation            # => 49
end                            # => 49

# >> "01"
# >> "18"
# >> "84"
# >> "44"
# >> "1"
# >> "2"
# >> "2"
# >> "5"
# >> 2
# >> 20
# >> 86
# >> 49
