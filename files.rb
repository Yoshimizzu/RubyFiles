# frozen_string_literal: true

directory_name = 'appli'

file_data = Dir.glob(File.join(directory_name, '**', '*.*')).each_with_object({}) do |file_name, hash|
  ext = File.extname(file_name)
  hash[ext] ||= 0
  hash[ext] += 1
end

File.open('raport.txt', 'w') do |file|
  file_data.each do |k, v|
    file.puts "#{k}\t#{v}"
  end
end
