f = File.open("sortme.in", "r")
fread = f.read
word_array =  fread.split(" ")
word_array -= ["0"]
# 这边是每一个数组中单词的个数
number_array = word_array.select{ |i| i[/^\d*$/] }.map { |e| e.to_i }
# 这边是需要处理的单词
remain_array = word_array.select { |e|  e.length < 26 and e[/^\D*$/] }
# 这边是字典顺序
dict = word_array.delete_if { |e| e.length < 26 }
f.close

def comparator (a, b, dict)
  length = a.length < b.length ? a.length : b.length
  length.times.each do |x|
    next if a[x] == b[x]
    return value =  dict.rindex(a[x]) <  dict.rindex(b[x]) ? 1 : -1
  end
  return 0
end

opt_array = []
number_array.each do |x|
  opt_array << remain_array.take(x)
  remain_array = remain_array.drop(x)
end

opt_array.map.with_index do |x,i|
  puts "year #{i+1}"
  x.sort { |a, b| comparator(a,b,dict[i]) }.reverse.map { |e| puts e  }
end

