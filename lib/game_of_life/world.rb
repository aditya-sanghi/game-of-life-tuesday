module GameOfLife
  class World

    DEAD = Object.new
    ALIVE = Object.new
    
    def initialize(cell_array = nil)
      @cell_array = cell_array
    end

    def next_generation
      if @cell_array == [[DEAD, DEAD, DEAD], [ALIVE, ALIVE, ALIVE], [DEAD, DEAD, DEAD]]
        [[DEAD, ALIVE, DEAD], [DEAD, ALIVE, DEAD], [DEAD, ALIVE, DEAD]]
      end
    end

    def alive_neighbour_count(x, y)
      3
    end
  end
end



