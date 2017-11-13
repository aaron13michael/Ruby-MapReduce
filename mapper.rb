ARGF.each do |line|
  line = line.chomp

  #skip lines with underscore
  next if line.include? "_"

  #get key
  mapkey = line.split("\t")[0]

  #return mapreduce output to stdout
  puts mapkey + "\t" + 1.to_s
end
