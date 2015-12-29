class Collection
  MIN = 220 / 1020
  MAX = 330 / 1020
  ORDER_TOLERANCE = 3

  attr_reader :pictures, :rows

  def initialize(num_pics = 1)

  end
end

# 4 pixels between each photo
# 1020 pixels total
# use CSS to resize, but load based on original screen size first
# then display that, then load other collages in case they
# change screen size

#1020 x 220
#1020 x 330

# ORDER_TOLERANCE describes how many pictures you can grab
# from beyond what fits naturally into one row, to try
# rearranging them to see if they fit better in another row

# possible bug: one bad sized picture gets pushed all the way to the end
# fix with attr on picture
