class OffsetGenerator

  def initialize(key=nil, date=Time.now.strftime("%d%m%y"))
    @key = key
    @date = date
  end

  def generate_offset
    squared = @date.to_i**2
    @offset = squared.to_s[-4..-1]
  end

  def generate_key
    num1 = rand(0..9)
    num2 = rand(0..9)
    num3 = rand(0..9)
    num4 = rand(0..9)
    num5 = rand(0..9)
    @key = "#{num1}#{num2}#{num3}#{num4}#{num5}"
  end

end

if __FILE__ == $0
encrypt = OffsetGenerator.new
p encrypt.generate_offset
p encrypt.generate_key
decrypt = OffsetGenerator.new
p decrypt.generate_offset
p @key
end
