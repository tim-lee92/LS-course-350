require 'chunky_png'

input_path, output_path = ARGV
fail if !input_path || !output_path
png = ChunkyPNG::Image.from_file(input_path)

png.width.times do |x|
  png.height.times do |y|
    pixel = png[x, y]
    rgb = ChunkyPNG::Color.to_truecolor_bytes(pixel)
    average = rgb.reduce(&:+) / 3
    color = ChunkyPNG::Color(average, average, average)
    png[x, y] = color
  end
end

png.save(output_path)
