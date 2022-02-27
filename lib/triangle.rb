require 'pry'
class Triangle

  attr_accessor :side_a, :side_b, :side_c, :kind

  def initialize(side_a, side_b, side_c)
    self.side_a = side_a
    self.side_b = side_b
    self.side_c = side_c
  end

  def kind
    if (side_a * side_b * side_c) == 0 || (side_a + side_b) <= side_c || (side_b + side_c) <= side_a || (side_c + side_a) <= side_b
      raise TriangleError
    elsif (side_a==side_b and side_a == side_c)
      self.kind = :equilateral
    elsif (side_a==side_b || side_a==side_c || side_b==side_c)
        self.kind = :isosceles
    else
      self.kind = :scalene
    end
  end

  class TriangleError < StandardError
  end
end