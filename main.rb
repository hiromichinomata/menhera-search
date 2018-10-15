require 'csv'
require 'erb'

csv_file = File.read('./data/meta.csv')
@filename_meta = CSV.parse(csv_file)

template = ERB.new(File.read('./template.html.erb'), nil, "%")
result = template.result(binding)
File.write('./public/index.html', result)

