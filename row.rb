class Row
  attr_reader :pictures

  def initialize(pics = [])
    @pictures = pics
  end

  def add_pic(pic)
    @pictures << pic
  end

  def remove_pic(pic)
    delete pic if @pictures.include?(pic)
  end

  def dimensions
    scale_factors =
     = @pictures.inject(0) { |total, curr| curr.width + total } + 4*@pictures.length
    height = @pictures.inject(0) { |total, curr| curr.height + total }
    height / width
  end

  private

  def min_height
    @pictures.min { |a, b| a.height <=> b.height }
  end

  def min_width
    @pictures.min { |a, b| a.height <=> b.height }
  end
end
