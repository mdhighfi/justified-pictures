class Picture
  MIN = 200
  MAX = 2000

  attr_reader :width, :height

  def initialize
    @width = rand(MAX-MIN) + MIN
    @height = rand(MAX-MIN) + MIN
  end
end
