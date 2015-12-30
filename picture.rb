require 'faker'

class Picture
  MIN = 400
  MAX = 2000

  attr_reader :width, :height, :src

  def initialize
    @width = rand(MAX-MIN) + MIN
    @height = rand(MAX-MIN) + MIN
    @src = generate_image_url
  end

  private

  def rand_color
    hex_digits = Hash[(10..15).zip('a'..'f')]
    color = [[], []]
    digits = (0..15).to_a
    6.times do
      digit = digits.sample
      color[0] << digit
      color[1] << (15 - digit)
    end
    2.times do |i|
      color[i].map! do |digit|
        if digit > 9
          hex_digits[digit]
        else
          digit.to_s
        end
      end
    end
    color.map(&:join)
  end

  def generate_image_url
    random_colors = rand_color
    Faker::Placeholdit.image(
      "#{@width}x#{@height}",
      'jpg',
      random_colors.first,
      random_colors.last,
      Faker::Hacker.say_something_smart
    )
  end
end
