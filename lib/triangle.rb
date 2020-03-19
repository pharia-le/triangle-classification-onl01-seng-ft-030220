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
    if @length+@height < @width || @height+@width < @length || @width+@length < @height || self.include?(0)
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    elsif (@length == @height && @height == @width)
      :equilateral
    elsif
    
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
