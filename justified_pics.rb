require 'faker'
require 'erb'

class Collection
  TOO_SHORT = 100 / 1020
  TALLEST = 350 / 1020
  ORDER_TOLERANCE = 10

  attr_reader :unassigned, :rows, :assigned

  def initialize(num_pics = 50)
    @unassigned = []
    num_pics.times do
      @unassigned << Picture.new
    end

    @assigned = []
    @rows = []
    generate_rows
  end

  def generate_rows
    until @unassigned.empty?
      current_row = Row.new([@unassigned.first])
      @assigned << @unassigned.shift
      while (current_row.dimensions > TALLEST) || @unassigned.empty?
        current_row.add_pic(@unassigned.first)
        @assigned << @unassigned.shift
      end
      if current_row.dimensions <= TOO_SHORT
        # current_row.remove_pic(@assigned.last)
        # @unassigned.unshift(@assigned.pop)
        # @unassigned[0], @unassigned[swap_with] = @unassigned[swap_with], @unassigned[0]
        # current_row.add_pic(@unassigned.first)
        # @assigned << @unassigned.shift

        # find longest picture in the current_row and swap it with
        # the shortest picture in the next ORDER_TOLERANCE unassigned pics
      end
    end
  end



  def generate_row
  end
end
