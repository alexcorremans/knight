require_relative 'square'

def knight_moves(a,b)
  # find the end position using breadth first search
  start = Square.new(a[0],a[1])
  queue = [start]
  path = []
  loop do
    current_square = queue.shift
    # found: add it to the path and exit loop
    if current_square.x == b[0] && current_square.y == b[1]
      path.push(current_square)
      break
    end
    # not found: add children to the queue
    queue = queue + current_square.generate_children
  end
  # go through parents of each square starting at the end position and add them to the path in reverse order
  current = path[0].parent
  until current.nil?
    path.unshift(current)
    current = current.parent
  end
  # print result
  puts "You made it in #{path.length - 1} moves! Here's your path:"
  path.each do |square|
    square.display
  end
end

knight_moves([3,3],[4,3])