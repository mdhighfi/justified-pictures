class Collection
  MIN = 220 / 1020
  MAX = 330 / 1020
  ORDER_TOLERANCE = 3

  attr_reader :pictures, :rows

  def initialize(num_pics = 1)
    @pictures = []
    num_pics.times do
      @pictures << Picture.new
    end

    @rows = []
    generate_rows
  end

  def generate_rows

  end
end
