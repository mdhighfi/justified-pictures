#!/usr/bin/ruby

require_relative 'picture'
require 'byebug'

class Row
  attr_reader :pictures

  def initialize(pics = [])
    @pictures = pics
  end

  def add_pic(pic)
    @pictures << pic
  end

  def remove_pic(pic)
    @pictures.delete(pic) if @pictures.include?(pic)
  end

  def dimensions
    return Float::INFINITY if @pictures.empty?
    smallest_height = smallest_pic.height
    scale_factors = @pictures.map { |pic| (smallest_height / pic.height.to_f) }
    space_between_pics = 4*@pictures.length
    total = 0
    @pictures.each_with_index do |pic, idx|
      total += pic.width * scale_factors[idx]
    end
    width = space_between_pics + total
    smallest_height / width.to_f
  end

  def to_s
    "Row: #{@pictures}"
  end

  private

  def smallest_pic
    @pictures.min_by(&:height)
  end

  def min_width
    @pictures.min { |a, b| a.width <=> b.width }
  end

end
