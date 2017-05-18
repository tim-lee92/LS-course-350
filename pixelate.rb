require 'chunky_png'

input_path, output_path = ARGV

size = 20

png = ChunkyPNG::Image.from_file(input_path)

blocks_across = png.width / size
blocks_down = png.height / size

blocks_across.times do |bx|
  blocks_down.times do |by|
    x1 = bx * 20
    x2 = x1 + 19
    y1 = by * 20
    y2 = y1 + 19

    color = png[x1, y1]
    x1.upto(x2).each do |x|
      y1.upto(y2).each do |y|
        png[x, y] = color
      end
    end
  end
end

png.save(output_path)
