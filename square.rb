class Square
  attr_reader :x, :y, :parent

  def initialize(x,y,parent=nil)
    @x = x
    @y = y
    @parent = parent
    @children = []
  end

  def display
    puts "[#{@x},#{@y}]"
  end

  def generate_children
    # returns an array of square objects containing all next moves coming from the current square
    moves = [[-2,-1],[-2,1],[-1,-2],[-1,2],[1,-2],[1,2],[2,-1],[2,1]]
    moves.each do |move|
      @children.push(Square.new(x+move[0],y+move[1],self)) if ((x+move[0]).between?(0,7) && (y+move[1]).between?(0,7))
    end
  return @children
  end
  
end