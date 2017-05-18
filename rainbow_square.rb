require 'chunky_png'

png = ChunkyPNG::Image.new(252, 252)
colors = [ ChunkyPNG::Color('red'),
           ChunkyPNG::Color('orange'),
           ChunkyPNG::Color('yellow'),
           ChunkyPNG::Color('yellowgreen'),
           ChunkyPNG::Color('green'),
           ChunkyPNG::Color('blue'),
           ChunkyPNG::Color('indigo'),
           ChunkyPNG::Color('purple'),
           ChunkyPNG::Color('violet') ]

252.times do |x|
  252.times do |y|
    section = (x / 28)
    png[x, y] = colors[section]
  end
end

png.save('rainbow_square.png')
