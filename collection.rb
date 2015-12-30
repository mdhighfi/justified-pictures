#!/usr/bin/ruby

require_relative 'row'
require 'byebug'
require_relative 'picture'

class Collection
  TOO_SHORT = 100 / 1020.to_f
  TALLEST = 350 / 1020.to_f
  ORDER_TOLERANCE = 10

  attr_reader :unassigned, :rows, :assigned

  def initialize(num_pics = 10)
    @unassigned = []
    num_pics.times do
      @unassigned << Picture.new
    end

    @assigned = []
    @rows = []
    generate_rows
  end

  def to_s
    "Collection: #{@rows}"
  end

  private

  def generate_rows
    until @unassigned.empty?
      new_row = generate_row
      new_row.rescale!
      @rows << new_row
    end
  end

  def generate_row
    current_row = Row.new([@unassigned.first])
    @assigned << @unassigned.shift
    while (current_row.dimensions > TALLEST) && !@unassigned.empty?
      current_row.add_pic(@unassigned.first)
      @assigned << @unassigned.shift
    end
    current_row
  end

end
