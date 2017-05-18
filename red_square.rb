require 'chunky_png'

png = ChunkyPNG::Image.new(256, 256)

red = ChunkyPNG::Color.rgb(255, 0 , 0)

256.times do |x|
  256.times do |y|
    png[x, y] = red
  end
end

png.save('red_square.png')
