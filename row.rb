class Row
  attr_reader :pictures

  def initialize(pics = [])
    @pictures = pics
  end

  def add_pic(pic)
    @pictures << pic
  end
end
