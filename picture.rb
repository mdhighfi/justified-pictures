#!/usr/bin/ruby

class Picture
  MIN = 400
  MAX = 2000

  attr_reader :width, :height, :src

  def initialize
    @width = rand(MAX-MIN) + MIN
    @height = rand(MAX-MIN) + MIN
    @src = generate_image_url
  end

  def to_s
    "P: #{@width/@height.to_f}"
  end

  def rescale!(factor)
    @width *= factor
    @height *= factor
  end

  private

  def rand_color
    hex_digits = Hash[(10..15).zip('a'..'f')]
    color_digits = []
    digits = (0..15).to_a
    3.times do
      color_digits << digits.sample
    end
    color = ''
    color_digits.each do |digit|
      if digit > 9
        color << hex_digits[digit]
      else
        color << digit.to_s
      end
    end
    color
  end

  def generate_image_url
    "http://dummyimage.com/#{@width}x#{@height}/#{rand_color}/#{rand_color}"
  end

end
