class Triangle
  attr_accessor :sideone, :sidetwo, :sidethree
  
  def initialize(sideone, sidetwo, sidethree)
    @sideone = sideone
    @sidetwo = sidetwo
    @sidethree = sidethree
  end
  
  def kind
    if sideone + sidetwo > sidethree && sideone + sidethree > sidetwo && sidetwo + sidethree > sideone && sideone > 0 && sidetwo > 0 && sidethree > 0
          return :equilateral if sideone == sidetwo && sidetwo == sidethree
          return :isosceles if sideone == sidetwo && sidetwo != sidethree || sidetwo == sidethree && sideone != sidethree || sideone == sidethree && sidetwo != sidethree
          return :scalene if sideone != sidetwo && sidetwo != sidethree && sidethree != sideone
      else
          begin
            raise TriangleError
          end
      end
    end
      
      
        class TriangleError < StandardError
           def message
             "this shape is not a Triangle!"
           end
         end
       
       
end

k = Triangle.new(0,0,0).kind
       
       

     
