require 'chunky_png'

png = ChunkyPNG::Image.new(256, 256)

256.times do |x|
  256.times do |y|
    color = ChunkyPNG::Color.rgb(255 - x, x, y)
    png[x, y] = color
  end
end

png.save('gradient_square.png')
