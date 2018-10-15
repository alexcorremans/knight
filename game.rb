class Square
    attr_reader :x, :y, :children

    def initialize(x,y)
        @x = x
        @y = y
        @children = []
    end

    def display
        puts "[#{@x},#{@y}]"
    end

    def generate_children
        moves = [[-2,-1],[-2,1],[-1,-2],[-1,2],[1,-2],[1,2],[2,-1],[2,1]]
        moves.each do |move|
            @children.push(Square.new(x+move[0],y+move[1])) if ((x+move[0]).between?(0,7) and (y+move[1]).between?(0,7))
        end
=begin       
        @children.each do |square|
            square.display
        end
=end
    end
    
end

Square.new(3,3).generate_children










=begin

class Board

    attr_reader :squares

    def initialize
        @squares = []
        for i in (0..7)
            for j in (0..7)
                @squares.push([i,j])
            end
        end
    end

    def display
        p @squares
    end
end

def knight_moves(a,b)

end

knight_moves([3,3],[4,3])
=end

