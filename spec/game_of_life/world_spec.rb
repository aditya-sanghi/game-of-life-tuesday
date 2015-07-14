require 'spec_helper'

module GameOfLife
  describe World do

    it 'should generate the next generation correctly ' do
      world = World.new
      expect(world.next_generation).to eq([[0, 1, 0], [0, 1, 0], [0, 1, 0]])
    end
  end
end

