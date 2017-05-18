require 'csv'

Albany Park,"M, W: 10AM-6PM;  TU, TH: 12PM-8PM; F, SA: 9AM-5PM; SU: Closed",Yes,Yes ,3401 W. Foster Avenue,CHICAGO,IL,60625,(773) 539-5450,http://www.chipublib.org/locations/1/,"(41.97557881655979, -87.71361314512697)"

csv_file = ARGV.first
fail 'You did not provide a csv file' unless csv_file

library_rows = CSV.read(csv_file, headers: true, header_converters: :symbol)

library_rows.each do |row|
  puts row
end
