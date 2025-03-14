class Triangle
  # write code here

  attr_accessor :l1 , :l2 , :l3

  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind

      l = [l1,l2,l3].sort
    unless l[0]+l[1] > l[2]
      raise TriangleError
    end
    
    if l1<=0 || l2<=0 || l3<=0    
      raise TriangleError   
    elsif l1 ==l2 && l1 ==l3 && l2==l3
        :equilateral
    elsif l1 == l2 || l1==l3 || l2==l3
        :isosceles
    elsif l1 !=l2 && l1 !=l3 && l2!=l3
        :scalene
    end

      
  end

  class TriangleError < StandardError
    def message 
      puts "Not a valid triangle"
    end
  end
end
