class Triangle
  
  attr_accessor :length, :height, :width
  
  @@all = []
  
  def initialize(length, height, width)
    @length = length
    @height = height
    @width = width
    self.save
  end
  
  def kind
    if @length+@height < @width || @height+@width < @length || @width+@length < @height || @height == 0 || @width == 0 || @length == 0
        raise TriangleError
    elsif (@length == @height && @height == @width)
      :equilateral
    elsif self.uniq.size == 3
      :scalene
    else
      :isosceles
    end
  end
  
  def self.all
    @@all
  end
  
  def save
    @@all << self
  end
  
  class TriangleError < StandardError
  end
  
end
