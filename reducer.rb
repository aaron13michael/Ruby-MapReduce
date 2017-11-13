count = 0
prevKey = ''

ARGF.each do |line|
  line = line.chomp

  mapkey = line.split(/\t/)[0]

  #set first key
  if prevKey.length == 0
    prevKey = mapkey
  end

  #change key when new one encountered
  if !mapkey.eql?(prevKey) && count > 0
    puts prevKey + "\t" + count.to_s
    count = 0
    prevKey = mapkey
  end

  count+=1
end

#handle last entry
puts prevKey + "\t" + count.to_s
