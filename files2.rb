rows = File.open('raport.txt', 'r') { |f| f.readlines }.map do |e|
  e.chomp.split("\t")
end.sort_by { |e| e.last.to_i }.reverse.take(5)
puts rows.inspect
