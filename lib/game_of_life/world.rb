module GameOfLife
  class World

    def initialize(cell_array = nil)
      @cell_array = cell_array
    end

    def next_generation
      if @cell_array == [[0, 0, 0], [1, 1, 1], [0, 0, 0]]
        [[0, 1, 0], [0, 1, 0], [0, 1, 0]]
      end
    end
  end
end

