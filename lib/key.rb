class Key

  def generate_key
    num1 = rand(0..9)
    num2 = rand(0..9)
    num3 = rand(0..9)
    num4 = rand(0..9)
    num5 = rand(0..9)
    "#{num1}#{num2}#{num3}#{num4}#{num5}"
  end

end
