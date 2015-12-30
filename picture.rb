class Picture
  MIN = 400
  MAX = 2000

  attr_reader :width, :height, :displacement, :src

  def initialize
    @width = rand(MAX-MIN) + MIN
    @height = rand(MAX-MIN) + MIN
    @displacement = 0

    random_colors = rand_color
    @src = Faker::Placeholdit.image(
      "#{@width}x#{@height}",
      'jpg',
      random_colors.first,
      random_colors.last,
      'Some Custom Text'
    )
  end

  private

  def rand_color
    color = ['', '']
    digits = (0..9).to_a.map(&:to_s).concat(('a'..'f').to_a)
    6.times do
      color[0] << digits.sample
    end
    color
  end
end
