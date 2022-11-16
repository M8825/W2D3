# position => [0, 1] => first element (0) refers to row and second element (0) refers to column

# Class is responsible for adding a player's marks, checking for winners, and printing the game board.
# For simplicity, board will be 3x3
class Board


  # Initialize instance variable @grid (2D Array)
  # Empty positions are represented as element ("_") is sub-arrays
  def initialize()
    @grid = Array.new(3) { Array.new(3, "_") }
  end


  # Accepts position (Array) example: [1, 2]
  # Returns boolean indicating whether or not the specified position is valid for the board, meaning it's not "out of bounds"
  def valid?(position)
    return position.all? { |ele| ele <= 2 && ele >= 0}
  end


  # Accepts position (Array) example: [1, 2]
  # Should return a boolean indicating whether of not the specified position does not contain a player's mark
  def empty?(position) # position = [1, 2]
    row = position[0]
    col = position[1]
    @grid[row][col] == "_"
  end

  # Accepts position (Array) and mark (:Symbol)
  # Should assign given mark to a given position on the grid
  # Raises Error is position is not valid or empty
  def place_mark(position, mark)
    row = position[0]
    col = position[1]

    if valid?(position) && empty?(position)
      @grid[row][col] = mark
    else
      raise "Try Again"
    end
  end

end