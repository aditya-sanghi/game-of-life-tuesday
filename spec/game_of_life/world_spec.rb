require 'spec_helper'

module GameOfLife
  DEAD = World::DEAD
  ALIVE = World::ALIVE

  describe World do

    it 'should give nil for the next generation ' do
      world = World.new
      expect(world.next_generation).to eq(NIL)
    end

    it 'should generate [[DEAD, ALIVE, DEAD], [DEAD, ALIVE, DEAD], [DEAD, ALIVE, DEAD]]  for input [[DEAD, DEAD, DEAD], [ALIVE, ALIVE, ALIVE], [DEAD, DEAD, DEAD]] ' do
      world = World.new([[DEAD, DEAD, DEAD], [ALIVE, ALIVE, ALIVE], [DEAD, DEAD, DEAD]])
      expect(world.next_generation).to eq([[DEAD, ALIVE, DEAD], [DEAD, ALIVE, DEAD], [DEAD, ALIVE, DEAD]])
    end

    it 'should give alive neighbors as 3' do
      world = World.new([[DEAD, DEAD, DEAD], [ALIVE, ALIVE, ALIVE], [DEAD, DEAD, DEAD]])
      expect(world.alive_neighbour_count(1, 1)).to eq(3)
    end

  end
end



