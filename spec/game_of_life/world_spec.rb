require 'spec_helper'

module GameOfLife
  describe World do

    it 'should give nil for the next generation ' do
      world = World.new
      expect(world.next_generation).to eq(NIL)
    end

    it 'should generate [[0, 1, 0], [0, 1, 0], [0, 1, 0]]  for input [[0, 0, 0], [1, 1, 1], [0, 0, 0]] ' do
      world = World.new([[0, 0, 0], [1, 1, 1], [0, 0, 0]])
      expect(world.next_generation).to eq([[0, 1, 0], [0, 1, 0], [0, 1, 0]])
    end
  end
end

