Dir.mkdir('output') unless Dir.exist?('output')

sizes = [320, 480, 640]

Dir['videos/*.mp4'].each do |file|
  basename = File.basename(file)
  sizes.each do |size|
    puts "converting #{file} at #{size}x..."
    `ffmpeg -i #{file} -vf scale=#{size}:-1 output/#{basename}_#{size}.mp4 2>&1`
  end
end
