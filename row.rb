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
    scale_factors = @pictures.map { |pic| (min_height / pic.height) }
    space_between_pics = 4*@pictures.length
    total = 0
    @pictures.each_with_index do |pic, idx|
      total += pic.width * scale_factors[idx]
    end
    width = space_between_pics + total
    min_height / width
  end

  private

  def min_height
    @pictures.min { |a, b| a.height <=> b.height }
  end

  def min_width
    @pictures.min { |a, b| a.width <=> b.width }
  end
end
