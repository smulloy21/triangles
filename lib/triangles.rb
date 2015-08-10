class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:triangle?) do
    if (@side1 + @side2 > @side3) && (@side2 + @side3 > @side1) && (@side3 + @side1 > @side2)
      true
    else
      false
    end
  end

  define_method(:triangle_type) do
    output = ""
    if triangle?()
      if @side1*@side1 + @side2*@side2 == @side3*@side3 || @side1*@side1 + @side3*@side3 == @side2*@side2 || @side3*@side3 + @side2*@side2 == @side1*@side1
        output += "right and "
      end
      if @side1 == @side2 && @side1 == @side3
        output += "equilateral."
      elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
        output += "isosceles."
      else
        output += "scalene."
      end
    else
      output += "not a triangle."
    end
  end
end
