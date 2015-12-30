class Picture
  MIN = 400
  MAX = 2000

  attr_reader :width, :height, :displacement

  def initialize
    @width = rand(MAX-MIN) + MIN
    @height = rand(MAX-MIN) + MIN
    @displacement = 0
  end
end
