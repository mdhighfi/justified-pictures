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

  private

  def generate_rows
    until @unassigned.empty?
      @rows << generate_row
    end
  end

  def generate_row
    current_row = Row.new([@unassigned.first])
    @assigned << @unassigned.shift
    while (current_row.dimensions > TALLEST) || @unassigned.empty?
      current_row.add_pic(@unassigned.first)
      @assigned << @unassigned.shift
    end
    current_row
  end
end
