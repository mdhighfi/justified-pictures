class Collection
  SHORTEST = 100 / 1020
  # SHORTEST = 220 / 1020
  TALLEST = 330 / 1020
  ORDER_TOLERANCE = 3

  attr_reader :unassigned, :rows, :assigned

  def initialize(num_pics = 50)
    @unassigned = []
    num_pics.times do
      @unassigned << Picture.new
    end

    @assigned = []
    @rows = []
    generate_rows
  end

  def generate_rows
    until @unassigned.empty?
      current_row = Row.new([@unassigned.first])
      @assigned = @unassigned.shift
      until (current_row.dimensions > SHORTEST) || @unassigned.empty?
        current_row.add_pic(@unassigned)
      end
      unless @unassigned.empty?
        if current_row.dimensions > TALLEST
          # find the skinniest picture and swap it with the widest from the next few
          # then delete a picture
        end
      end
    end
  end

  def generate_row
  end
end
